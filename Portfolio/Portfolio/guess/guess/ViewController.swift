//
//  ViewController.swift
//  guess
//
//  Created by Adeyemi, Similoluwa on 03/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let diceRoll = Int.random(in: 2..<13) // value between 2 and 13

    @IBOutlet weak var choice: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func guessbutton(_ sender: Any) {
        let guessvalue = Int(choice.text!)
        if choice.text != nil {
            if guessvalue == diceRoll {
                output.text = "Correct, you guessed right!"
            }
            else {
                output.text = "Incorrect, you guessed wrong!"
            }
            choice.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

