//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
        if sender.tag == 1
        {
            let alret = UIAlertController(title: "you have finshed boody", message: "Would like any help", preferredStyle: .alert )
            
            let rR = UIAlertAction (title: "Restart", style: .default) { (UIAlertAction) in
                self.nextQuestion()
            }
                                    
                                    
                            
            alret.addAction(rR)
            present(alret, animated: true, completion: nil)
            
            print ("ENDING GOOD")
            
        }
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        print ("Coning here")
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
       
    }
    

    
}
