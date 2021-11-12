//
//  ViewController.swift
//  Guess_the_number
//
//  Created by 王力宏 on 2021/11/10.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var input: UITextField!
    @IBOutlet var output: UILabel!
    @IBOutlet var con: UIButton!
    @IBOutlet var game: UIButton!
    
    var target = Int.random(in: 1...10)
    var error_count = 0
    
    
    @IBAction func Confirm(sender: UIButton){
        if let temp = Int(input.text!){
            if temp == target{
                output.text = "Correct!"
                game.isHidden = false
            }
            
            else if temp > target{
                output.text = "less than " + String(temp)
                error_count+=1
            }
            
            else if temp < target{
                output.text = "Greater than " + String(temp)
                error_count+=1
            }
            
            if error_count >= 5{
                game.isHidden = false
                output.text = String("Fail the game!")
            }
        }
        
    }
    
    @IBAction func NewGame(sneder: UIButton){
        error_count = 0
        target = Int.random(in: 1...10)
        game.isHidden = true
        output.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

