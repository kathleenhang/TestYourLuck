//
//  QuizScreenController.swift
//  TestYourLuck
//
//  Created by Kathleen Hang on 2/12/18.
//  Copyright © 2018 Team Cowdog. All rights reserved.
//

import UIKit
import GameKit

class QuizScreenController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBAction func action(_ sender: Any) {
        let dataProviderQuestionArray = dataProvider.questions
        let button = sender as? UIButton
        if button?.tag == rightAnswerPlacement
        {
            print("Right!")
        }
        else
        {
            print("Wrong!")
        }
        
        if currentQuestion != dataProviderQuestionArray.count
        {
            newQuestion()
        }
        else
        {
            performSegue(withIdentifier: "showResultScreen", sender: self)
        }
        
    }
    
    // how to inherit from data model class
    
    let dataProvider: QuizDataModel = QuizDataModel()
    var currentQuestion = 0
    var rightAnswerPlacement = 0
    let totalButtonChoices = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    // how to connect question aarray to question label
    func newQuestion()
    {
        let dataProviderQuestionArray = dataProvider.questions
        let dataProviderAnswerArray = dataProvider.answers
        
        questionLabel.text = dataProviderQuestionArray[currentQuestion]
        rightAnswerPlacement = GKRandomSource.sharedRandom().nextInt(upperBound: totalButtonChoices)
        // create a button
        var button: UIButton = UIButton()
        // we never want it to reach 0 because that's our answer location
        var counter = 1
        // how to set it up for 4 buttons???
        // the problem is index out of bound for 4th loop
        for i in 1...4
        {
            // create a button
            button = view.viewWithTag(i) as! UIButton
            
            // bad fix
            if i == 4
            {
                counter = 3
            }
            if i == rightAnswerPlacement
            {
                button.setTitle(dataProviderAnswerArray[currentQuestion][0], for: .normal)
            }
            else
            {
                // answers are 0-3
                button.setTitle(dataProviderAnswerArray[currentQuestion][counter], for: .normal)
                counter += 1
            }
            
            
            // 1: counter 2
            // 2: counter 3
            // 3: counter 4 - problem
            // 4: counter 5 - 5 wont ever be used
        }
        currentQuestion += 1
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    

}
