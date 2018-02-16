//
//  ViewController.swift
//  TestYourLuck
//
//  Created by Kathleen Hang on 2/12/18.
//  Copyright © 2018 Team Cowdog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func startButton(_ sender: Any) {
        
        // when button is clicked, we switch to quiz screen
        performSegue(withIdentifier: "showQuizScreen", sender: self)
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





