//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Fauzan Aldwinavaldhy Wiratnoputra on 15/05/19.
//  Copyright © 2019 Fauzan Aldwinavaldhy Wiratnoputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    var learnerInstance: LearnerModel? // copy Learner model
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Jan", ageLearner: 21, genderLearner: "Pria", imageProfileLearner: "")
        
        updateUI()
    }

    func updateUI() {
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
        
     
    }

    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.increaseAge()
            updateUI()
        }
    }
    
}

