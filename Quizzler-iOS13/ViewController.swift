//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quiz = [
        ["Dhaka is the capital of Bangladesh", "True"],
        ["Delhi is the capital of Thailand","False"] ,
        ["Bangkok  is the capital of South Africa","False"]
    ]
    var qNumber = 0
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askQuestion()
    }
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[qNumber][1]
        
        if userAnswer == actualAnswer {
            print("Wow.....Right")
        } else {
            print("Wrong!!!")
        }
        qNumber += 1
        qNumber %= 3
        askQuestion()
    }
    
    func askQuestion(){
        questionText.text = quiz[qNumber][0]
    }
    

}

