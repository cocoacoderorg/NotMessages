//
//  FirstViewController.swift
//  NotMessages
//
//  Created by Drew Crawford on 9/18/14.
//  Copyright (c) 2014 DrewCrawfordApps. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func updateViewConstraints() {
        if (self.view.frame.size.width >= 414) {
            widthConstraint.constant = 73;
        }
        else {
            widthConstraint.constant = 0;
        }
        super.updateViewConstraints()
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        self.view.setNeedsLayout()
    }
    

}

