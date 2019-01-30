//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit

//: Import AVFoundation - Package that allows us to tap into the audio visual components in the iPhone
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    
    //: We create a global variable named selectedSoundFileName that is an empty string
    var selectedSoundFileName : String = ""
    
    //: Array of soundfile names - no need for file extensions
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //: sender is the button that triggers the IBAction
    @IBAction func notePressed(_ sender: UIButton) {
        
        //: We recall the global varianle named selectedSoundFile and set it to a new value which equals the new sound we want to play. We use the sender.tag to pick a sound file name form the soundArray. The -1 fixes the index out of range bug in the array
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        print(selectedSoundFileName)
        
        //: Calls on the playsound function
        playSound()
    }
    
    func playSound() {
        //: Sets up the soundURL to become the selectedSoundFileName resource that we need per each tag
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            
            //: Try to initialize our autio player with the contents of the soundURL
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            
            //: print the errors
            print(error)
        }
        
        //: After we do the try & catch block, we are gonna try to play the audio
        audioPlayer.play()
    }
}

