//
//  News1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 2/17/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//


import UIKit
import Foundation

class news1: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var height = UIScreen.main.bounds.height
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isScrollEnabled = true
        scrollView.contentSize.height = height * 5
        
        let url = NSURL (string: "http://www.t1ptraining.com/events.html")
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest)
        
        webView.isUserInteractionEnabled = false

            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//final bracket
}
