//
//  ViewController.swift
//  LABanime3
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider1: UISlider!
    
    @IBOutlet weak var buttum1: UIButton!
    
    @IBAction func buttomslider(sender: AnyObject) {
        
       /* let numberOfFish = Int(self.slider1.value)
        
        for loopNumber in 1... num{
            
           
            let duration = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            
          
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            
          
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            
            let fish = UIImageView()
            fish.image = UIImage(named: "12")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
         
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                  
                    fish.removeFromSuperview()
            })
    
        }*/
        
    }
    @IBAction func animatebuttontapped(sender: AnyObject)
     {
        
       /* let views = (frontView: self.redSquare,backView: self.blueSquare)
        
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
        views.frontView.removeFromSuperview()
            
            self.container.addSubview(views.backView)
            }, completion:{ finished in
        })        var views :(frontView: UIView,backView: UIView)
        if((self.redSquare.superview) != nil){
            
            views = (frontView: self.redSquare, backView: self.blueSquare)
        }
        else{
            views = (frontView: self.blueSquare , backView: self.redSquare)
        }
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil) */
        let numberOfFish = Int(self.slider1.value)
        
        for loopNumber in 1...numberOfFish {
            
         
            let duration : NSTimeInterval = 1.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
           
            let size : CGFloat = CGFloat( arc4random_uniform(40))+10
            
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            
            let fish = UIImageView()
            fish.image = UIImage(named: "12.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                  
                    fish.removeFromSuperview()
                    
            })
        }

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
      /*  self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        self.container.addSubview(self.redSquare)*/
        
       
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

