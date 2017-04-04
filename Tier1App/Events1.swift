//
//  Events1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/4/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//



import UIKit
import Foundation

class Events1: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var eventInfoLabel: UILabel!
    
    
    
    var height = UIScreen.main.bounds.height
    var eventsLoadInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.isScrollEnabled = true
        scrollview.contentSize.height = height * 5
        
        
        let url = NSURL (string: "http://www.t1ptraining.com/events.html")
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest)
        
        webView.isUserInteractionEnabled = false

        
        eventsLoadInfo = GlobalData.eventInfo[0]
        self.eventInfoLabel.text = eventsLoadInfo
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
