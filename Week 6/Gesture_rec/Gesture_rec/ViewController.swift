//
//  ViewController.swift
//  Gesture_rec
//
//  Created by Demetrakopoulos Petros on 7/17/14.
//  Copyright (c) 2014 PSD Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tapView: UIView!
    @IBOutlet var swipeView: UIView!
    @IBOutlet var longPressView: UIView!
    @IBOutlet var pinchView: UIView!
    @IBOutlet var rotateView: UIView!
    @IBOutlet var panView: UIView!
    var rotation = CGFloat()
    let tapRec = UITapGestureRecognizer()
    let pinchRec = UIPinchGestureRecognizer()
    let swipeRec = UISwipeGestureRecognizer()
    let longPressRec = UILongPressGestureRecognizer()
    let rotateRec = UIRotationGestureRecognizer()
    let panRec = UIPanGestureRecognizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        tapRec.addTarget(self, action: "tappedView")
         pinchRec.addTarget(self, action: "pinchedView:")
         swipeRec.addTarget(self, action: "swipedView")
         longPressRec.addTarget(self, action: "longPressedView")
         rotateRec.addTarget(self, action: "rotatedView:")
        panRec.addTarget(self, action: "draggedView:")
        tapView.addGestureRecognizer(tapRec)
        swipeView.addGestureRecognizer(swipeRec)
        pinchView.addGestureRecognizer(pinchRec)
        longPressView.addGestureRecognizer(longPressRec)
        rotateView.addGestureRecognizer(rotateRec)
        rotateView.userInteractionEnabled = true
        rotateView.multipleTouchEnabled = true
        pinchView.userInteractionEnabled = true
        pinchView.multipleTouchEnabled = true
        tapView.userInteractionEnabled = true;
        swipeView.userInteractionEnabled  = true
        longPressView.userInteractionEnabled = true
        panView.userInteractionEnabled = true
        panView.addGestureRecognizer(panRec)
        // Do any additional setup after loading th3e view, typically from a nib.
    }
    func tappedView(){
        let tapAlert = UIAlertController(title: "Tapped", message: "You just tapped the tap view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    func swipedView(){
        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped the swipe view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    func longPressedView(){
        let tapAlert = UIAlertController(title: "Long Pressed", message: "You just long pressed the long press view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }
    func rotatedView(sender:UIRotationGestureRecognizer){
        var lastRotation = CGFloat()
        self.view.bringSubviewToFront(rotateView)
        if(sender.state == UIGestureRecognizerState.Ended){
            lastRotation = 0.0;
        }
        rotation = 0.0 - (lastRotation - sender.rotation)
    var point = rotateRec.locationInView(rotateView)
        var currentTrans = sender.view!.transform
        var newTrans = CGAffineTransformRotate(currentTrans, rotation)
        
        sender.view!.transform = newTrans
        lastRotation = sender.rotation
        
    }
    func pinchedView(sender:UIPinchGestureRecognizer){
        self.view.bringSubviewToFront(pinchView)
            sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale = 1.0

    }
    func draggedView(sender:UIPanGestureRecognizer){
        self.view!.bringSubviewToFront(sender.view!)
        var translation = sender.translationInView(self.view)
        sender.view!.center = CGPointMake(sender.view!.center.x + translation.x, sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: self.view)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

