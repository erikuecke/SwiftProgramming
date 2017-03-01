//
//  ViewController.swift
//  VoiceTextEdit26
//
//  Created by Erik Uecke on 3/1/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()

    @IBOutlet var textView: NSTextView!
    
    // Contents of textView
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue
        }
    }
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        if let contents = textView.string, !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }

}

