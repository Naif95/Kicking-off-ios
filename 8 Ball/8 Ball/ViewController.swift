//
//  ViewController.swift
//  8 Ball
//
//  Created by Naif on 05/07/2019.
//  Copyright © 2019 Naif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let answerArr = ["ball1" , "ball2" , "ball3" , "ball4" , "ball5"]
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        updateAns()
    }
    @IBOutlet weak var ballimage: UIImageView!
    @IBAction func askingAction(_ sender: UIButton) {
        updateAns()
    }
    func updateAns(){
        let rand = Int.random(in: 0 ... 4)
        ballimage.image = UIImage.init(named: answerArr[rand])
    }
    
}

