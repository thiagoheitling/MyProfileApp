//
//  DiscoverMoreViewController.swift
//  MyAppToBuddyBuild
//
//  Created by Thiago Heitling on 2016-04-01.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

import UIKit

class WhoIAmVC: UIViewController, UINavigationControllerDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    let whoIAmArray = WhoIAmArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width/2
        profileImageView.clipsToBounds = true
        
    }
    
    // MARK: - Actions
    
    @IBAction func previousButtonPressed(sender: UIButton) {
        
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return whoIAmArray.data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let eachCharacteristic = whoIAmArray.data[indexPath.row]
        cell.textLabel?.text = eachCharacteristic
        return cell
    }
}
