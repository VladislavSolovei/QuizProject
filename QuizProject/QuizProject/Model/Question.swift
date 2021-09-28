//
//  Question.swift
//  QuizProject
//
//  Created by Vlad on 8.09.21.
//

import Foundation
class Question {
    
    let questionImage: String
    let question: String
    let button1: String
    let button2: String
    let button3: String
    let button4: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choice1: String, choice2: String, choice3: String, choice4: String, answer: Int) {
        questionImage = image
        question = questionText
        button1 = choice1
        button2 = choice2
        button3 = choice3
        button4 = choice4
        correctAnswer = answer
    }
    
}
