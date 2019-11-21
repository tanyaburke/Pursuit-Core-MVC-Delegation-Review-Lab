//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    //plug data
    private var allMovies = [Movie](){
        didSet{
            tableView.reloadData()
        }
    }
    
    var fontSizes = CGFloat(){
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    
    }
    //helper function, help populate the cells
    
    func loadData(){
        allMovies = Movie.allMovies
    }
    @IBAction func unWindFontSetting(segue: UIStoryboardSegue){
        
        
       
        guard let settingsViewController = segue.source as? SettingsViewController else {
            fatalError("failed to acess event")
        }
        fontSizes = settingsViewController.fontSize
    }
}






extension ViewController: UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        //get object
        let movie = allMovies[indexPath.row]
        
        //configure cell
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = String(movie.year)
        cell.textLabel?.font = UIFont(name: "Savoye LET", size: fontSizes)
        return cell
        
    }
    
    
}
