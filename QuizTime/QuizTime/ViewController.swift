//
//  ViewController.swift
//  QuizTime
//
//  Created by Разработчик on 12.02.2019.
//  Copyright © 2019 Разработчик. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func startButton(_ sender: Any) {
        performSegue(withIdentifier: "secondView" , sender: self)
    }
    
    @IBAction func exit(_ sender: UIButton) {
        Darwin.exit(1)
        
    }
}

