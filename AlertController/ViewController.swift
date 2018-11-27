//
//  ViewController.swift
//  AlertController
//
//  Created by Chang Sophia on 11/27/18.
//  Copyright © 2018 Chang Sophia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var keyInAn = 0
 
    @IBOutlet weak var blackJackTextField: UITextField!
   
    @IBOutlet weak var blackjackButton: UIButton!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
//empty
        if blackJackTextField.text?.isEmpty == true {
            let controller = UIAlertController(title: "It's your turn", message: "Don't lose the chance\n to be a millionaire!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }
    
       
    //21
        if let blackjackText = blackJackTextField.text,
            let blackjack = Int(blackjackText)
        { if blackjack == 21{
            let controller = UIAlertController(title: "Black Jack!", message: "Welcome to Harvard!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }
    }
        if let blackjackText = blackJackTextField.text,
            let blackjack = Int(blackjackText)
        { if blackjack > 21{
            let controller = UIAlertController(title: "Burst!", message: "Professor Micky took all money!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
            }
        }
        if let blackjackText = blackJackTextField.text,
            let blackjack = Int(blackjackText)
        { if blackjack < 21 && blackjack >= 17{
            let controller = UIAlertController(title: "Tie!", message: "Winner, Winner, Chicken Closer!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
            }
        }
        if let blackjackText = blackJackTextField.text,
            let blackjack = Int(blackjackText)
        { if blackjack < 17 {
            let controller = UIAlertController(title: "Lose!", message: "Go back to school and be a nerd", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
            }
        }
        
    }
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blackjackButton.layer.masksToBounds = false
        self.blackjackButton.layer.shadowOffset = CGSize(width:-10,height:10)
        self.blackjackButton.layer.shadowColor = UIColor.darkGray.cgColor
        self.blackjackButton.layer.shadowOpacity = 0.8
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

