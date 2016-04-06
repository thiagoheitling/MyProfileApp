//
//  GetInTouchViewController.swift
//  MyAppToBuddyBuild
//
//  Created by Thiago Heitling on 2016-04-02.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

import UIKit

class GetInTouchViewController: UIViewController {
    
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var linkedin: UILabel!
    @IBOutlet weak var github: UILabel!
    @IBOutlet weak var instagram: UILabel!
    @IBOutlet weak var website: UILabel!

    var contactArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        let session = NSURLSession.sharedSession()
        let urlPath = "http://thiagoheitling.com/contact/contact.json"
        let url = NSURL(string: urlPath)
        let datatask = session.dataTaskWithURL(url!) { (data, response, error) in

            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: []) as! NSDictionary
                
                if let contacts = json["contacts"] as? [[String: AnyObject]] {
                    for contact in contacts {
                        if let phone = contact["phone"] as? String {
                            self.phone.text = phone
                        }
                        if let email = contact["email"] as? String {
                            self.email.text = email
                        }
                        if let linkedin = contact["linkedin"] as? String {
                            self.linkedin.text = linkedin
                        }
                        if let github = contact["github"] as? String {
                            self.github.text = github
                        }
                        if let instagram = contact["instagram"] as? String {
                            self.instagram.text = instagram
                        }
                        if let website = contact["website"] as? String {
                            self.website.text = website
                        }
                    }
                }
            }
            catch {
                print("JSON  error: \(error)")
            }
        }
        datatask.resume()
    }
    
    // MARK: - Actions
    
    @IBAction func previousButtonPressed(sender: UIButton) {
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}

