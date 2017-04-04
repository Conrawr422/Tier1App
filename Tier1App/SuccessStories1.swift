//
//  SuccessStories1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/4/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//



import UIKit
import Foundation

class SuccessStories1: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    var height = UIScreen.main.bounds.height
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var SSActLabel: UILabel!
    
    
    var SSLoadInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.isScrollEnabled = true
        scrollview.contentSize.height = height * 3.2
        
        let url = NSURL (string: "http://www.t1ptraining.com/success-stories.html")
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest)
        
        webView.isUserInteractionEnabled = false

        SSLoadInfo = GlobalData.successStories[0]
        self.SSActLabel.text = SSLoadInfo
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
