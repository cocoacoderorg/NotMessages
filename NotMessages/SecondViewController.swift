//
//  SecondViewController.swift
//  NotMessages
//
//  Created by Drew Crawford on 9/18/14.
//  Copyright (c) 2014 DrewCrawfordApps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewWillAppear(animated: Bool) {
        self.overrideTraitCollection(nil)
    }
    
    func overrideTraitCollection(var newSize: CGSize?) {
        if (newSize==nil) { newSize = self.view.frame.size; }
        if (newSize!.width >= 414) {
            self.parentViewController?.setOverrideTraitCollection(UITraitCollection(horizontalSizeClass: .Regular), forChildViewController: self)
        }
        else {
            self.parentViewController?.setOverrideTraitCollection(UITraitCollection(), forChildViewController: self)
        }
        self.view.setNeedsLayout()
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        self.overrideTraitCollection(size)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

