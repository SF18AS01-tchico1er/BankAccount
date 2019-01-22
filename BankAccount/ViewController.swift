//
//  ViewController.swift
//  BankAccount
//
//  Created by TIEGO Ouedraogo on 1/21/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deposit: Double =  0.0
    var withdraw: Double = 0.0
    var balance: Double = 0.0
    //var amount: Double = 0.0
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var depositButton: UIButton!
    @IBOutlet weak var withdrawButton: UIButton!
    @IBOutlet weak var balanceButton: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        depositButton.isEnabled = true
        withdrawButton.isEnabled = true
        balanceButton.isEnabled = true
        
    }

    @IBAction func depositButtonPressed(_ sender: UIButton) {
        if let amount: Double = Double(textField.text!){
            if amount < 0 {
                label.text = "deposit cannot be negative"
            } else{
                label.text = "you just deposit: \(amount)"
               
            }
            balance += amount;
            sender.resignFirstResponder()
        }
       
    }
    
    @IBAction func withdrawButtonPressed(_ sender: UIButton) {
        
        if let amount1: Double = Double(textField.text!){
            if amount1 > balance {
                label.text = "you dont have enough fund for this amount "
            } else if  amount1 == balance {
             sender.resignFirstResponder()
                label.text = "you cannot have a zero balance"
                
            } else{
                label.text = "you just withdraw: \(amount1)"
            }
            balance -= amount1;
        }
    }
    
    @IBAction func balanceButtonPressed(_ sender: UIButton) {
        label.text = "your balance is: \(balance)"
    }
  
    @IBAction func textFieldButton(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
}
