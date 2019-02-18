//
//  Question.swift
//  QuizTime
//
//  Created by Разработчик on 12.02.2019.
//  Copyright © 2019 Разработчик. All rights reserved.
//

import Foundation

class Question {
    let questionImage: String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, answer: Int){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        correctAnswer = answer
        
    }
}
