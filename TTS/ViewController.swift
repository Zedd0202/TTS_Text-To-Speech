//
//  ViewController.swift
//  TTS
//
//  Created by Zedd on 2017. 3. 10..
//  Copyright © 2017년 Zedd. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var myTextView: UITextView!
   
    @IBAction func textToSpeech(_ sender: Any) {
        
        let synthesizer = AVSpeechSynthesizer()
        
        let utterance = AVSpeechUtterance(string: myTextView.text )
        
        utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
        
        utterance.rate = 0.4
        utterance.pitchMultiplier = 0.5
        synthesizer.speak(utterance)
    }
}

