//
//  SettingsViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Tanya Burke on 11/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var sliderSize: UISlider!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var sizeNumberLabel: UILabel!
    
    var fontSize = CGFloat()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      

    }
    
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        
        stepperControl.value = Double(Float(sender.value))
        sizeNumberLabel.text = Int(sender.value).description
        fontSize = CGFloat(sender.value)
        
    }


    @IBAction func stepperAction(_ sender: UIStepper) {
        
        sliderSize.value = Float(sender.value)
        sizeNumberLabel.text = Int(sender.value).description
        fontSize = CGFloat(sender.value)
        
    }
    

    
    
}
