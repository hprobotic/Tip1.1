//
//  SettingsViewController.swift
//  Tip
//
//  Created by Muin Momin on 12/18/15.
//  Copyright © 2015 Muin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSlider: UISlider!
    @IBOutlet weak var defaultTipPercentangeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func onUpdateDefault(sender: UIButton) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(Double(defaultTipSlider.value), forKey: "default_tip_percentage")
    }
    
    @IBAction func onDefaultTipValueChanged(sender: AnyObject) {
        defaultTipPercentangeLabel.text = "\(Int(defaultTipSlider.value*100))%"
    }

}