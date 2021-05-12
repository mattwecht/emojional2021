//
//  ViewController.swift
//  emojional2021
//
//  Created by Matthew Wecht on 5/12/21.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🐶": "cute puppy", "🐱": "...cat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //alterations go here
    }
    
    @IBAction func showMessage(sender: UIButton) {

        let selectedEmotion = sender.titleLabel?.text //stores the emoji tapped
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: "Who let the dogs out?", preferredStyle: UIAlertController.Style.alert)//this creates the alert that is called later. Note: when calling a value from the dictionary you must unwrap it (!)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))//this ensures the alert as a button to exit the alert
        
        present(alertController, animated: true, completion: nil)//controls how the alert is shown

    }


}

