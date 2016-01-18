//
//  ViewController.swift
//  usd230Comm
//
//  Created by USD 230 Information Technology on 12/9/15.
//  Copyright © 2015 USD230IT. All rights reserved.
//

import UIKit
import TwitterKit

// MARK: Views

// MARK: Twitter
class UserTimelineViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Twitter"
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "SHSchools", APIClient: client)
    }
}
// Above section is the Twitter controller

// MARK: Game
class GameController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Game"
    }
}
// Above section is the game controller

// MARK: Staff Resources
class StaffResourcesController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Staff Resources"
        let url = NSURL(string: "http://www.usd230.org/web_banners/resources_mobile/index.php")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        // Above section allows for immediate load of webview.
        }
    
    
     @IBAction func openPage(sender: UIButton) {
        if let url = NSURL(string: "http://www.usd230.org/web_banners/resources_mobile/index.php") {
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
            // Staff resources button.
        }
        
    }


}
// Above section is staff resources controller
