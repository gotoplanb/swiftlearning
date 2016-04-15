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
        CenteredTextLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // OLD
    func updateLabel(buttonText:String) {
        CenteredTextLabel.hidden = false
        CenteredTextLabel.text = buttonText
    }
    
    // NEW
    func updateLabelNew(buttonText:String) {
        CenteredTextLabel.hidden = false
        CenteredTextLabel.text = buttonText
    }

    @IBAction func TLButtonPressed(sender: UIButton) {
        let me = TLButton.titleLabel?.text
        updateLabel(me!)
    }

    @IBAction func TRButtonPressed(sender: UIButton) {
        updateLabel("TR")
    }
    
    @IBAction func BLButtonPressed(sender: UIButton) {
        updateLabel("BL")
    }
    
    @IBAction func BRButtonPressed(sender: UIButton) {
        updateLabel("BR")
    }
    
}

