//
//  ViewController.swift
//  emojional2021
//
//  Created by Matthew Wecht on 5/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //alterations go here
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        let alertController = UIAlertController(title: "Woof Woof?", message: "Who let the dogs out?", preferredStyle: UIAlertController.Style.alert)//this creates the alert that is called later
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))//this ensures the alert as a button to exit the alert
        
        present(alertController, animated: true, completion: nil)//controls how the alert is shown

    }


}

