//
//  ViewController.swift
//  Animation
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollisionBehaviorDelegate{
    
    var square: UIView!
    var animetor:UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
    var firstContact = false
     var snap: UISnapBehavior!

    override func viewDidLoad() {
        super.viewDidLoad()
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animetor = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animetor.addBehavior(gravity)
        view.addSubview(barrier)
        
               collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        collision.collisionDelegate = self
       // collision = UICollisionBehavior(items: [square])
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        animetor.addBehavior(collision)
        
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        collision.action = {
        println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
    }
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square])
            itemBehaviour.elasticity = 0.6
            animetor.addBehavior(itemBehaviour)
        
    }
    
     func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
                println("Boundary contact occurred - \(identifier)")
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(0.3){
            collidingView.backgroundColor = UIColor.grayColor()
            
        }
        if(!firstContact){
         firstContact = true
            let square = UIView(frame: CGRect(x: 30, y: 0, width: 100, height: 100))
            square.backgroundColor = UIColor.grayColor()
            view.addSubview(square)
            
            collision.addItem(square)
            gravity.addItem(square)
            let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
            animetor.addBehavior(attach)
        }

    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if(snap != nil){
        animetor.removeBehavior(snap)
    }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animetor.addBehavior(snap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

