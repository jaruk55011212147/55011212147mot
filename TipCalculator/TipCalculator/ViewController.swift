//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var totalTextField: UITextField!

    @IBOutlet weak var taxPctLabel: UILabel!
    
    
    @IBOutlet weak var texPctSlider: UISlider!
    
    @IBOutlet weak var resultsTextView: UITextView!
    
    @IBAction func calculateTapped(sender: AnyObject)
        {
            tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
            var results = ""
            
            let possibleTips = tipCalc.returnpossibletips()
            var  re = ""
            
            for (tipPct, tipValue) in possibleTips {
             results += "\(tipPct)%: \(tipValue)\n"
            }
            resultsTextView.text = results
        }
    
    @IBAction func calculate(sender: AnyObject) {
        
    }
    
    @IBAction func taxPercentChanged(sender: AnyObject) {
    }
    
    let tipCalc = TipCalculator (total: 33.25,taxPct:0.06)
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        texPctSlider.value = Float(tipCalc.taxPct) * 100.0
        taxPctLabel.text = "Tax percentage(\(Int(texPctSlider.value))%)"
     resultsTextView.text = " "
    
    }
    
    

    @IBAction func texPercentageChabged(sender : AnyObject){
    tipCalc.taxPct = Double(texPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender : AnyObject){
        totalTextField.resignFirstResponder()
    }

}
