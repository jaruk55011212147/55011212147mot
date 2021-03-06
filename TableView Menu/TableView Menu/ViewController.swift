//
//  ViewController.swift
//  TableView Menu
//
//  Created by iStudents on 2/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {
    
    
    
    let cellIdentifier = "cellIdentifier"
    var tableData = ["not","pen","x"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func  numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        
         return 1
    }
    
     func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
     func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
       var cell = tableView!.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel!.text = self.tableData[indexPath.row]
        var imageName = UIImage(named: tableData[indexPath.row])
        cell.imageView!.image = imageName
        return cell
        
    }
    func  tableView(tableView: UITableView!, didSelectRowAtIndexPath  indexpath: NSIndexPath!){
        let alert = UIAlertController(title: "item select", message: "you select item \(indexpath.row)",
            preferredStyle: UIAlertControllerStyle.Alert)
        
           alert.addAction(UIAlertAction(title: "KO",
           style: UIAlertActionStyle.Default,
            handler: {
                (alert: UIAlertAction!) in println("an alert of type \(alert.style.hashValue) was tapped")
        }))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

