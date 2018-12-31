//
//  ViewController.swift
//  tip1
//
//  Created by apple on 2018/12/30.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tippercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billfield.text!) ?? 0
        let tip = bill * tippercentages[tipcontrol.selectedSegmentIndex]
        let Total = bill + tip
        
        tiplabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", Total)
        
    }
    
    
    
    
}

