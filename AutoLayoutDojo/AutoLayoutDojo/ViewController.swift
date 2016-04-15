//
//  ViewController.swift
//  AutoLayoutDojo
//
//  Created by Dave Stanton on 4/15/16.
//  Copyright © 2016 Mobiquity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CenteredTextLabel: UILabel!
    @IBOutlet weak var TLButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CenteredTextLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // OLD
    func updateLabel(text:String) {
        CenteredTextLabel.text = text
    }
    
    // NEW
    func updateLabelNew(buttonText:String) {
        CenteredTextLabel.hidden = false
        CenteredTextLabel.text = buttonText
    }

    @IBAction func cornerButtonPressed(sender: UIButton) {
        if let titleLabelText = sender.titleLabel?.text {
            updateLabel(titleLabelText)
        } else {
            print("Why isn't there some title label text?")
        }
    }
}

