//
//  ViewController.swift
//  usd230Comm
//
//  Created by USD 230 Information Technology on 12/9/15.
//  Copyright © 2015 USD230IT. All rights reserved.
//

import UIKit

// MARK: Outlets

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://www.usd230.org/web_banners/resources_mobile/index.php")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
        // Above section allows for immediate load of webview.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: Actions
    
     @IBAction func openPage(sender: UIButton) {
        if let url = NSURL(string: "http://www.usd230.org/web_banners/resources_mobile/index.php") {
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
            // Staff resources button.
        }
        
    }


}