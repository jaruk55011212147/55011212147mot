//
//  ViewController.swift
//  Exam1_55011212147
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var leng: UITextField!
    
    @IBOutlet weak var midtrem1: UITextField!
    
    @IBOutlet weak var midtram2: UITextField!
    
    @IBOutlet weak var poin: UITextField!
    
    @IBOutlet weak var final2: UITextField!
    
    @IBOutlet weak var final1: UITextField!
    
    @IBOutlet weak var gread: UITextField!
    
    @IBOutlet weak var kum: UIButton!
    
    @IBOutlet weak var gread2: UITableView!
    
    @IBOutlet weak var sum1: UITextField!
    
    func get(){
        var leng1 = leng.text
        var mid1 = Int((midtram2.text as NSString).integerValue)
        var mid2 = Double((midtrem1.text as NSString).doubleValue)
        var  p = Int((poin.text as NSString).integerValue)
        var f1 = Int((final1.text as  NSString).integerValue)
        var f2 = Double((final2.text as NSString).doubleValue)
       
}
    func cal(sum5:Double){
            
            if(sum5 >= 80){
              gread2 == "A"
            }
            else if(sum5 >= 74){
                gread2 == "B"
            }
            else if(sum5 >= 68){
                gread2 == "c+"
            }
            else if(sum5 >= 62){
                gread2 == "c"
            }
            else if(sum5 >= 56){
               gread2 == "D+"
            }
            else if(sum5 >= 44){
               gread2 == "D"
            }else if (sum5 < 44) {
               gread2 == "F"
            }
           
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


