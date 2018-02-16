//
//  FinalScreenController.swift
//  TestYourLuck
//
//  Created by Kathleen Hang on 2/14/18.
//  Copyright © 2018 Team Cowdog. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class FinalScreenController: UIViewController
{
    @IBAction func retryAction(_ sender: Any)
    {
        performSegue(withIdentifier: "replayQuizScreen", sender: self)
        // reset the counters
    }
}
