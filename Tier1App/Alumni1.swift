//
//  Alumni1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/4/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//


import UIKit
import Foundation

class Alumni1: UIViewController {
    
  
    @IBOutlet weak var scrollview: UIScrollView!
    
    var height = UIScreen.main.bounds.height
    
    @IBOutlet weak var webView: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.isScrollEnabled = true
        scrollview.contentSize.height = height * 3
        
        let url = NSURL (string: "http://www.t1ptraining.com/alumni.html")
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest)
        
        webView.isUserInteractionEnabled = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
