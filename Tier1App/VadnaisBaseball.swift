//
//  VadnaisBaseball.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 2/7/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//

import Foundation
import UIKit

class VadnaisBaseball: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var vadReg: UILabel!
    
    var height = UIScreen.main.bounds.height
    
    var vadRegLoad = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isScrollEnabled = true
        scrollView.contentSize.height = height * 8.2
        
        let url = NSURL (string: "http://www.t1ptraining.com/winter-2.html")
        let requestObj = NSURLRequest(url: url! as URL);
        webView.loadRequest(requestObj as URLRequest)
        
        webView.isUserInteractionEnabled = false
        
        
        vadRegLoad = GlobalData.vadReg[0]
        self.vadReg.text = vadRegLoad
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func webBut(_ sender: AnyObject) {
    
    
    let alertController = UIAlertController(title: "Open Safari", message:
        "Open Tier One Website", preferredStyle: UIAlertControllerStyle.alert)
    
    //sets one option as yes
    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
        UIAlertAction in
        
        let T1Site = "http://www.t1ptraining.com/home.html"
        UIApplication.shared.openURL(NSURL(string: T1Site)! as URL)
    }
    
    //sets one option as cancel
    alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    
    alertController.addAction(okAction)
    self.present(alertController, animated: true, completion: nil)
}



//final bracket
}
