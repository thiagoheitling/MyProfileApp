//
//  ClipMapViewController.swift
//  MyAppToBuddyBuild
//
//  Created by Thiago Heitling on 2016-04-02.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

import UIKit

class ClipMapViewController: UIViewController {
    
    @IBOutlet weak var webview: UIWebView!
    var urlPath = "http://thiagoheitling.com/portfolio/clipmap"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        
        loadAddressURL()
    }


    func loadAddressURL() {
        
        let requestURL = NSURL(string: urlPath)
        let request = NSURLRequest(URL: requestURL!)
        webview.loadRequest(request)
    }
    
    // MARK: - Actions
    
    @IBAction func previousButtonPressed(sender: UIButton) {
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
