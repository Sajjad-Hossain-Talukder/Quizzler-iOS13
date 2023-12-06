//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quizBrain =  QuizBrain()
    
    
    var timer = Timer()
   
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var thrirdOp: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreAction: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        scoreAction.text = quizBrain.getScore();
        questionText.text = quizBrain.getQuestionText()
        trueButton.setTitle(quizBrain.getOption(0), for: .normal)
        falseButton.setTitle(quizBrain.getOption(1), for: .normal)
        thrirdOp.setTitle(quizBrain.getOption(2), for: .normal)
    }
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
      

        if quizBrain.checkAnswer(sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector:#selector(uTimer), userInfo: nil, repeats: false  )
        
        
    }
    
    @objc func uTimer () {
        
        progressBar.progress =   quizBrain.progressTracker()
        scoreAction.text = quizBrain.getScore();
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        thrirdOp.backgroundColor = UIColor.clear
        questionText.text = quizBrain.getQuestionText()
        trueButton.setTitle(quizBrain.getOption(0), for: .normal)
        falseButton.setTitle(quizBrain.getOption(1), for: .normal)
        thrirdOp.setTitle(quizBrain.getOption(2), for: .normal)
    }

}

