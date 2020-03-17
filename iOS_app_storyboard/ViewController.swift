//
//  ViewController.swift
//  iOS_app_storyboard
//
//  Created by Lim, Sean Jericson Delas Alas on 17/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
           super.viewDidLoad()
       
           img.isUserInteractionEnabled = true
           
           // SWIPE RIGHT
           let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
           
           swipeRight.direction = UISwipeGestureRecognizer.Direction.right
           
           img.addGestureRecognizer(swipeRight)
    
           
           
           // SWIPE LEFT
           let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
           
           swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
           
           img.addGestureRecognizer(swipeLeft)
           
           
           
           // SWIPE UP
           let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
           
           swipeUp.direction = UISwipeGestureRecognizer.Direction.up
           
           img.addGestureRecognizer(swipeUp)
           
           
           // SWIPE DOWN
           let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGesture))
           
           swipeDown.direction = UISwipeGestureRecognizer.Direction.down
           
           img.addGestureRecognizer(swipeDown)
       }


       @objc func swipeGesture(sendr: UISwipeGestureRecognizer?) {
           
           if let swipeGesture = sendr {
               switch swipeGesture.direction {
               case UISwipeGestureRecognizer.Direction.right:
                   print("Right")
                   text.text = "RIGHT"
               case UISwipeGestureRecognizer.Direction.left:
                   print("Left")
                   text.text = "LEFT"
               case UISwipeGestureRecognizer.Direction.up:
                   print("Up")
                   text.text = "UP"
               case UISwipeGestureRecognizer.Direction.down:
                   print("Down")
                   text.text = "DOWN"
               default:
                   break
               }
           }
       }
}

