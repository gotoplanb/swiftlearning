//
//  ViewController.swift
//  AutoLayoutContstraints
//
//  Created by Dave Stanton on 5/2/16.
//  Copyright © 2016 Mobiquity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we create a simple UIView
        
        let redBox = UIView()
        
        redBox.backgroundColor = UIColor.redColor()
        redBox.topAnchor.constraintEqualToAnchor(view.topAnchor)
        redBox.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor)
        redBox.leftAnchor.constraintEqualToAnchor(view.leftAnchor)
        redBox.rightAnchor.constraintEqualToAnchor(view.rightAnchor)
        redBox.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redBox)
        
        redBox.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
        redBox.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        redBox.leftAnchor.constraintEqualToAnchor(view.leftAnchor).active = true
        redBox.rightAnchor.constraintEqualToAnchor(view.rightAnchor).active = true
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

