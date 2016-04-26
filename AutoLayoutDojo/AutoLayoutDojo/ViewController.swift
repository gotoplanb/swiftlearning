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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CenteredTextLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel(text:String) {
        CenteredTextLabel.text = text
    }

    @IBAction func cornerButtonPressed(sender: UIButton) {
        guard let titleLabelText = sender.titleLabel?.text else {
            print("Why u no titleLabel?")
            return
        }
        updateLabel(titleLabelText)
    }
}

