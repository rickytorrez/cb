//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ricky Torrez on 1/22/19.
//  Copyright © 2019 E. Ricardo Torrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Array of img balls
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    // variable for array
    var randomNumberBall : Int = 0
    
    // Image View
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // on app load, roll the ball
        updateBallImg()
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImg()
    }
    
    // when the phone motion is ended, update the ball img
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImg()
    }
    
    func updateBallImg(){
        // randomNumber generator
        randomNumberBall = Int.random(in: 1 ... 4)
        
        // image view update according to the random generator
        imageView.image = UIImage(named: ballArray[randomNumberBall])
    }
    
}

