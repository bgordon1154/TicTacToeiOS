//
//  ScoreViewController.swift
//  TTT
//
//  Created by Gordon, Brandon Thomas on 11/8/17.
//  Copyright © 2017 Gordon, Brandon Thomas. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    @IBOutlet weak var computerScoreL: UILabel!
    @IBOutlet weak var humanScoreL: UILabel!
    @IBOutlet weak var tieScoreL: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        humanScoreL.text = "\(GlobalVariables.sharedManager.humanScore)"
        computerScoreL.text = "\(GlobalVariables.sharedManager.computerScore)"
        tieScoreL.text = "\(GlobalVariables.sharedManager.tieScore)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
