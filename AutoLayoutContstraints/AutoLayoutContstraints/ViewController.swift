//
//  ViewController.swift
//  AutoLayoutContstraints
//
//  Created by Dave Stanton on 5/2/16.
//  Copyright © 2016 Mobiquity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redBox = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we create a simple UIView
        
        redBox.translatesAutoresizingMaskIntoConstraints = false
        redBox.backgroundColor = .redColor()
        view.addSubview(redBox)
        
        // Top, Bottom, Left, Right constraints
        
        let redBoxTopConstraint = NSLayoutConstraint(item: redBox, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1, constant: 30)
        let redBoxBottomConstraint = NSLayoutConstraint(item: redBox, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1, constant: -50)
        
        let redBoxLeftConstraint = NSLayoutConstraint(item: redBox, attribute: .Leading, relatedBy: .Equal, toItem: self.view, attribute: .Leading, multiplier: 1, constant: 20)
        let redBoxRightConstraint = NSLayoutConstraint(item: redBox, attribute: .Trailing, relatedBy: .Equal, toItem: self.view, attribute: .Trailing, multiplier: 1, constant: -20)
        
        // Add constraints to the view
        self.view.addConstraints([redBoxTopConstraint, redBoxBottomConstraint, redBoxLeftConstraint, redBoxRightConstraint])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // Will uncomment bottom after i figure out what's going on with removing and then adding new constraints... not quite the right behavior
//        self.performSelector(#selector(updateView), withObject: nil, afterDelay: 5)
    }
    
    func updateView() {
        
        // WIP
        self.view.removeConstraints(self.view.constraints)
        
        let redViewCenterXConstraint = NSLayoutConstraint(item: self.redBox, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0)
        
        let redViewCenterYConstraint = NSLayoutConstraint(item: self.redBox, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0)
        
        let redViewWidthConstraint = NSLayoutConstraint(item: self.redBox, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 200)
        
        let redViewHeightConstraint = NSLayoutConstraint(item: self.redBox, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 200)
        
        self.view.addConstraints([redViewCenterXConstraint, redViewCenterYConstraint, redViewWidthConstraint, redViewHeightConstraint])
        print(self.view.constraints)
        
        UIView.animateWithDuration(3, animations: {
            self.view.layoutIfNeeded()
        }) { (completed) in
            print("Animations completed")
        }
    }
    
}

