//
//  ViewController.swift
//  emojional2021
//
//  Created by Matthew Wecht on 5/12/21.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🐶": "cute puppy", "🐱": "...cat"]
    let customMessages = ["cute puppy":["Ever eat a clock? It's time consuming","Got hit by a soda, good thing it was a soft drink","PUPPPPPIES"],"...cat":["ew","why?","so you don't like animals that are fun?"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //alterations go here
    }
    
    @IBAction func showMessage(sender: UIButton) {

        let selectedEmotion = sender.titleLabel?.text //stores the emoji tapped
        let options = customMessages[emojis[selectedEmotion!]!]!//loads possible messages
        let emojiMessage = options.randomElement()
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)//this creates the alert that is called later. Note: when calling a value from the dictionary you must unwrap it (!)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))//this ensures the alert as a button to exit the alert
        
        present(alertController, animated: true, completion: nil)//controls how the alert is shown

    }


}

