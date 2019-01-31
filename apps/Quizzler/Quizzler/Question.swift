//
//  Question.swift
//  Quizzler
//
//  Created by Ricky Torrez on 1/30/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

//: Create a new class
class Question {
    
    //: THE QUESTION CLASS HAS TWO PROPERTIES
    //: constant for the question
    let questionText : String
    
    //: constant for the answer - true/false
    let answer : Bool

    //: this method determines what happens when a new question object is created from this Question class
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }

}
