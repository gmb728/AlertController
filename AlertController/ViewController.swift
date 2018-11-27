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

