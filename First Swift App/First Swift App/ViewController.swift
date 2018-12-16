//
//  ViewController.swift
//  First Swift App
//
//  Created by Ming Li on 2018-12-14.
//  Copyright © 2018 Allenlidev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showMessage(send: UIButton) {
        let emojiDictionary = ["😡": "Hangry", "😛": "Sassy", "😭": "QQ", "😴": "Sleepy"]
        let selectedButton = send
        
        if let wordToLookup = selectedButton.titleLabel?.text{
            let meaning = emojiDictionary[wordToLookup]
        
    
        let alertController = UIAlertController(
            title: "Feeling...",
            message: meaning,
            preferredStyle: UIAlertController.Style.alert)

        alertController.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default,
            handler: nil))

        present(alertController, animated: true, completion: nil)
        }
    }

}
