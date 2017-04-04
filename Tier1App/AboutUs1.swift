//
//  AboutUs1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/4/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//

import UIKit
import Foundation

class AboutUs1: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    var height = UIScreen.main.bounds.height
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.isScrollEnabled = false
        scrollview.contentSize.height = height * 1
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
