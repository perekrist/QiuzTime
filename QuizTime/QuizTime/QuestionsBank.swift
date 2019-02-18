//
//  QuestionsBank.swift
//  QuizTime
//
//  Created by Разработчик on 12.02.2019.
//  Copyright © 2019 Разработчик. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(image: "firstQuestion", questionText: "Сколько гномов в друзьях у Белоснежки?", choiceA: "7", choiceB: "8", choiceC: "9", answer: 1))
        
        list.append(Question(image: "secondQuestion", questionText: "Как зовут сына Короля-Льва Муфасы?", choiceA: "Лимбо", choiceB: "Дамбо", choiceC: "Симба", answer: 3))
        
        list.append(Question(image: "thirdQuestion", questionText: "За кем полезла Алиса в темную нору?", choiceA: "Чеширский кот", choiceB: "Белый кролик", choiceC: "Шляпник", answer: 2))

    }
}
