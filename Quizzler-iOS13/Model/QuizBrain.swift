//
//  QuestionBrain.swift
//  Quizzler-iOS13
//
//  Created by Xotech on 06/12/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct QuizBrain {

    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var qNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ uAnswer: String) -> Bool {
        if uAnswer == quiz[qNumber].cAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func progressTracker() -> Float {
        return Float(qNumber+1) / Float(self.quiz.count)
    }
    
    func getQuestionText() -> String {
        return quiz[qNumber].text
    }
    
    mutating  func nextQuestion() {
        qNumber  = (qNumber+1) % self.quiz.count
        if qNumber == 0 {
            score = 0
        }
    }
    
    func getScore()->String {
        return "Score : \(score)"
    }
    
    func getOption(_ op:Int )->String{
        return quiz[qNumber].option[op]
    }
    
}
