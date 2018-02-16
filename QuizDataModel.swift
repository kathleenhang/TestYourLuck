//
//  QuizDataModel.swift
//  TestYourLuck
//
//  Created by Kathleen Hang on 2/12/18.
//  Copyright © 2018 Team Cowdog. All rights reserved.
//

import GameKit

class QuizDataModel {
    let questions = ["Do you like Donald Trump?",
                     "Which house did Ron Weasley get selected to be in?",
                     "What is the name of the male main character of the 50 Shades Freed movie?",
                     "Which chess piece moves only diagonally?",
                     "How many pounds does a chihuahua weigh?",
                     "Who loves spinach the most?",
                     "What breed is the Target store dog?",
                     "How many Pokemon are currently in existence?",
                     "Which day is free slurpee day?",
                     "Does Subway offer free cookies?"]
    let answers = [["No", "Yes", "Don't Click", "Don't Click"], ["Gryffindor", "Slytheryn", "HufflePuff", "Ravenclaw"], ["Christian", "Boyce", "Elliot", "Jack"], ["Bishop", "Horse", "Knight", "Rook"], ["8", "12", "15", "9"], ["Popeye", "Vin Diesel", "The Rock", "John Cena"], ["Bull Terrier", "Pitbull", "Doberman", "Dachshund"], ["802", "750", "645", "575"], ["7/11", "8/04", "4/20", "5/04"], ["Yes", "No", "Don't Click", "Don't Click"]]
    
    func randomQuestion() -> String {
        let randomQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: questions.count)
        return questions[randomQuestion]
        
    }
    
}
