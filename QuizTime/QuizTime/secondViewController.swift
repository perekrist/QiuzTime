//
//  secondViewController.swift
//  QuizTime
//
//  Created by Разработчик on 12.02.2019.
//  Copyright © 2019 Разработчик. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var option1: UISwitch!
    @IBOutlet weak var option2: UISwitch!
    @IBOutlet weak var option3: UISwitch!
    @IBOutlet weak var optionA: UILabel!
    @IBOutlet weak var optionB: UILabel!
    @IBOutlet weak var optionC: UILabel!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!

    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC : fifthViewController = segue.destination as! fifthViewController
        destVC.dataFromFirst = "\(score)/3"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func pressed(_ sender: UISwitch) {        
        if sender.tag == selectedAnswer {
            score += 1
        }
        questionNumber += 1
        option1.isOn = false
        option2.isOn = false
        option3.isOn = false
        updateQuestion()
    }

    func updateQuestion(){
        if questionNumber < allQuestions.list.count {
            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.text = allQuestions.list[questionNumber].optionA
            optionB.text = allQuestions.list[questionNumber].optionB
            optionC.text = allQuestions.list[questionNumber].optionC
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        } else {
            performSegue(withIdentifier: "fifthView" , sender: self)
        }
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
}
