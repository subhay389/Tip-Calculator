//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Subhay Manandhar on 11/12/16.
//  Copyright © 2016 Subhay Manandhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var enteredAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBAction func onTap(_ sender: Any) {
//        view.endEditing(true)
//        print("tapped")
//    }

    
    @IBAction func onTap(_ sender: Any) {
        print("tapped")
        view.endEditing(true)
    }
    
    
    @IBAction func SettingsButton(_ sender: Any) {
        print("Subhay")
    }
    

    
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercent = [0.15, 0.18, 0.20]
        
        let amount = Double(enteredAmount.text!) ?? 0
        let tip = amount*tipPercent[tipControl.selectedSegmentIndex]
        let total = amount + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }

}

