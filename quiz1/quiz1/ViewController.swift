//
//  ViewController.swift
//  quiz1
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var num1: UILabel!
    
    @IBOutlet weak var num2: UILabel!
    
    @IBOutlet weak var num3: UILabel!
    
    
    var B1=0;
    var B2=0;
    var B3=0;
    @IBAction func numone(sender: AnyObject) {
        B1 += 1
        num1.text=String(B1)
    }
    
    @IBAction func numtwo(sender: AnyObject) {
        B2 += 2
        num2.text=String(B2)    }
    
    @IBAction func numtree(sender: AnyObject) {
        B3 += 3
        num3.text=String(B3)    }
    
    @IBAction func ResetALL(sender: AnyObject) {
        num1.text = "0"
        num2.text = "0"
        num3.text = "0"
        B1=0
        B2=0
        B3=0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

