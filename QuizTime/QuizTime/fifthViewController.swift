//
//  QuestionsBank.swift
//  QuizTime
//
//  Created by Разработчик on 12.02.2019.
//  Copyright © 2019 Разработчик. All rights reserved.
//

import UIKit

class fifthViewController: UIViewController {
    var dataFromFirst :String = ""
    
    @IBOutlet weak var displayCongratulations: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = dataFromFirst
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBAction func againButton(_ sender: Any) {
        performSegue(withIdentifier: "firstView" , sender: self)
    }
    @IBAction func exit(_ sender: UIButton) {
        Darwin.exit(1)
    }
    
}
