//
//  ViewController.swift
//  rollen
//
//  Created by Grant Timmerman on 11/13/14.
//  Copyright (c) 2014 Grant Timmerman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup web view
        let webView:UIWebView = UIWebView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
        self.view.addSubview(webView)
        
        // Go to page
        let urlString:NSString = "http://www.rollen.co/";
        let url:NSURL = NSURL(string: urlString)!
        let request:NSURLRequest = NSURLRequest(URL: url, cachePolicy: NSURLRequestCachePolicy.ReloadIgnoringLocalCacheData, timeoutInterval: 60)
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}