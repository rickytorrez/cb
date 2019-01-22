//
//  ViewController.swift
//  Dicee
//
//  Created by Ricky Torrez on 1/22/19.
//  Copyright © 2019 E. Ricardo Torrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    
    var randomDiceIndex2: Int = 0
    
    // Left dice roller
    @IBOutlet weak var diceImageView1: UIImageView!
    
    //Right dice roller
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // Roll button
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Create a random whole number (int) from 0 to 5 on dice index1
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        
        // Create a random whole number (int) from 0 to 5 on dice index2
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print(randomDiceIndex2)
        print(randomDiceIndex1)
        
    }
    
}

