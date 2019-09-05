//
//  ViewController.swift
//  Dicee
//
//  Created by Naif on 30/06/2019.
//  Copyright © 2019 Naif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArr = ["dice1", "dice2", "dice3" ,"dice4" ,"dice5","dice6"]
    var randomDiceX1 = 0
    var randomDiceX2 = 0

    @IBOutlet weak var diceeView1: UIImageView!
    @IBOutlet weak var diceeView2: UIImageView!
    override func viewDidLoad() {
//        updateMyDices()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        updateMyDices()
    }
    
    func updateMyDices()
    {
        randomDiceX1 = Int(arc4random_uniform(6))
        randomDiceX2 = Int(arc4random_uniform(6))
        print(randomDiceX1+1)
        print(randomDiceX2+1)
        diceeView1.image = UIImage(named: diceArr[randomDiceX1])
        diceeView2.image = UIImage(named: diceArr[randomDiceX2])
    }
    
    
    
}

