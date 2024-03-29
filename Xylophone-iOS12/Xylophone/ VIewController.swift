//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var audioPlayer: AVAudioPlayer?


    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch  {
            print(error)
        }
        audioPlayer?.play()
    }
        
        }

