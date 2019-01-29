//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit

//: Import Audio and Visual Foundation
import AVFoundation

class ViewController: UIViewController{
    
    //: The question mark declares that it is an optional
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //: sender is the button that triggers the IBAction
    @IBAction func notePressed(_ sender: UIButton) {
        
        //: Create a constant and a path to point where the sound is located in your project, don't forget the exclamation mark at the end
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
    
        //: Do catch block
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
    }
}

