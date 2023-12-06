//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Xotech on 06/12/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let option: [String]
    let cAnswer : String
    
    init(q:String, a: [String] , correctAnswer: String ){
        text = q
        option = a
        cAnswer = correctAnswer
    }
    
    
}
