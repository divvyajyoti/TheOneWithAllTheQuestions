//
//  QuizTrivia.swift
//  TheOneWithAllTheQuestions
//
//  Created by Divvyajyoti Sha on 22/05/22.
//

import Foundation

struct QuizTrivia{
    
    let quiz = [
        Quest(q: "Which Friends are siblings?",c: [ "Rachel and Monica", "Ross and Monica", "Chandler and Joey"], ans: "Ross and Monica"), Quest(q: "Which instrument does Phoebe play?", c: ["Violin","Harp","Guitar"], ans: "Guitar"), Quest(q: "What is Ross' profession ", c: ["Paleontologist","Doctor","Businessman"], ans:"Paleontologist" ),Quest(q: "What does Joey do for work?", c: ["Nothing","Actor","Model"], ans: "Actor"),Quest(q: "Who uses the phrase 'My diamond shoes are too tight'?", c: ["Chandler","Rachel","Joey"], ans: "Chandler"), Quest(q: "Ross and Rachel had a ____ named ____", c: ["son,Ben","daughter,Emma", "daughter,Ella"], ans: "daughter,Emma"), Quest(q: "Where do Ross and Rachel get married?", c: ["Vegas", "Church","London"], ans: "Vegas"),
        Quest(q: "Who have been friends since college?", c: ["Chandler and Ross","Monica and Rachel","Ross and Rachel"], ans: "Chandler and Ross"),Quest(q: "Which friends get married?", c: ["Phoebe and Joey","Monica and Chandler","Rachel and Joey"], ans: "Monica and Chandler"),Quest(q: "Who uses the phrase 'He,s her Lobster?", c: ["Joey","Phoebe","Monica"], ans: "Phoebe"),Quest(q: "What's the name of Joey's bedtime penguin pal?", c: ["Huggsy","Officer GoodBody","The Shining"], ans: "Huggsy"),Quest(q: "What tattoo does Rachel get on her hip?", c: ["A freckle","A heart","The whole world"], ans: "A heart"), Quest(q: "What does Ross buy for Rachel's birthday?", c: ["A brooch","A necklace","A sweater"], ans: "A brooch")
    ]

    var questNo = 0
    var score = 0
    
    func getQuestionText() -> String{
        return quiz[questNo].question
    }
  
    func getChoiceOne()-> String{
        return quiz[questNo].choice[0]
    }

    func getChoiceTwo()-> String{
        return quiz[questNo].choice[1]
    }
    
    func getChoiceThree()-> String{
        return quiz[questNo].choice[2]
    }
    
   mutating func checkAns(_ userAns : String)->Bool {
        if userAns == quiz[questNo].answer{
            score += 1
            return true
        }
       else{
            return false
       }
    }

    mutating func nextQuest(){
        if questNo + 1 < quiz.count{
            questNo += 1
        }
        else{
            questNo = 0
            score = 0
        }
    }
    
    func getScore()-> Int{
        return score
    }
    
    func getProgress() -> Float{
        return Float(questNo)/Float(quiz.count)
    }

}
