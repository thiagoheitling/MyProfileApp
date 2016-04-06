//
//  ViewController.swift
//  MyAppToBuddyBuild
//
//  Created by Thiago Heitling on 2016-03-31.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var startHereButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startHereButton.layer.cornerRadius = 20
    }
    
    //MARK: - Actions
    
    @IBAction func startHereButtonPressed(sender: UIButton) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let discoverMoreNavCont: UINavigationController = (storyboard.instantiateViewControllerWithIdentifier("WhoIAmNavCont") as? UINavigationController)!
        self.presentViewController(discoverMoreNavCont, animated: true, completion: nil)
    }
}

