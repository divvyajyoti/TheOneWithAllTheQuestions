//
//  Quest.swift
//  TheOneWithAllTheQuestions
//
//  Created by Divvyajyoti Sha on 22/05/22.
//

import Foundation

struct Quest{
    let question : String
    let choice: [String]
    let answer: String
    
    init(q: String, c: [String], ans:String ){
        question = q
        choice = c
        answer = ans
    }
    
}
