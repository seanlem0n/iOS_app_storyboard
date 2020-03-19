//
//  RandomNumbersViewController.swift
//  iOS_app_storyboard
//
//  Created by Lim, Sean Jericson Delas Alas on 19/03/2020.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class RandomNumbersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func randomize(_ sender: Any) {
        let numbers = 1...9
        let shuffledNumbers = numbers.shuffled()
        
        let myViews = view.subviews.compactMap{$0 as? UILabel}
        
        for (index,label) in myViews.enumerated(){
            label.text = String(shuffledNumbers[index])
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
