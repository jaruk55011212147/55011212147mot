//
//  ViewController.swift
//  labanime2
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let coloredSquare = UIView()
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        self.view.addSubview(coloredSquare)
        
        UIView.animateWithDuration(1.0, animations: {coloredSquare.backgroundColor = UIColor.redColor()
       coloredSquare.frame = CGRect(x: 350-50, y: 120, width: 50, height: 50)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

