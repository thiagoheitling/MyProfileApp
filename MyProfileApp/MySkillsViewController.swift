//
//  MySkillsViewController.swift
//  MyAppToBuddyBuild
//
//  Created by Thiago Heitling on 2016-04-01.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

import UIKit

class MySkillsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
    }

    // MARK: - Actions
    
    @IBAction func previousButtonPressed(sender: UIButton) {
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
