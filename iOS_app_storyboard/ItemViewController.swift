//
//  ItemViewController.swift
//  iOS_app_storyboard
//
//  Created by Lim, Sean Jericson Delas Alas on 4/6/20.
//  Copyright © 2020 deloitte. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var text: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = text
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.text = text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
