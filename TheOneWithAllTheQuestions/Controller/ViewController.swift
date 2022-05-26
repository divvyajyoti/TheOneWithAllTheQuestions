//
//  ViewController.swift
//  TheOneWithAllTheQuestions
//
//  Created by Divvyajyoti Sha on 22/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceOneLabel: UIButton!
    @IBOutlet weak var choiceTwoLabel: UIButton!
    @IBOutlet weak var choiceThreelabel: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
  var quizTrivia = QuizTrivia()

    override func viewDidLoad() {
        super.viewDidLoad()
        choiceOneLabel.layer.cornerRadius = 40
        choiceOneLabel.layer.borderWidth  = 2
        choiceOneLabel.layer.borderColor = UIColor.black.cgColor
        choiceOneLabel.backgroundColor = UIColor.brown
        
        choiceTwoLabel.layer.cornerRadius = 40
        choiceTwoLabel.layer.borderWidth  = 2
        choiceTwoLabel.layer.borderColor = UIColor.black.cgColor
        
        choiceThreelabel.layer.cornerRadius = 40
        choiceThreelabel.layer.borderWidth  = 2
        choiceThreelabel.layer.borderColor = UIColor.black.cgColor
        updateUI()
        
    }

    @IBAction func answerButton(_ sender: UIButton) {
    
        let userAns = sender.currentTitle!
        let rightAns = quizTrivia.checkAns(userAns)
        
        if rightAns {
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
       }
        quizTrivia.nextQuest()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    
    @objc func updateUI(){
        questionLabel.adjustsFontSizeToFitWidth = true
        questionLabel.minimumScaleFactor = 0.5
        questionLabel.text = quizTrivia.getQuestionText()
        
        choiceOneLabel.backgroundColor = UIColor.clear
        choiceTwoLabel.backgroundColor = UIColor.clear
        choiceThreelabel.backgroundColor = UIColor.clear
        
        choiceOneLabel.setTitle(quizTrivia.getChoiceOne(), for: .normal)
        choiceTwoLabel.setTitle(quizTrivia.getChoiceTwo(), for: .normal)
        choiceThreelabel.setTitle(quizTrivia.getChoiceThree(), for: .normal)
        
        
        scoreLabel.text = "Score:\(quizTrivia.getScore())"
        progressBar.progress = quizTrivia.getProgress()
    }
    
   
    
}

