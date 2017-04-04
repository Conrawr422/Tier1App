//
//  ViewController.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 12/12/16.
//  Copyright © 2016 CRESS, CONNER. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    //connect qotd label
    @IBOutlet weak var qotd: UILabel!
    
    //connect menu button/qotd switcher
    @IBOutlet weak var QOTDandMenu: UIButton!
    
    //instance variables
    var amount: Int = 0
    var didLoadQuote = ""
    var welcomeLoadQuote = ""
    
    @IBOutlet weak var scrollview: UIScrollView!
    var height = UIScreen.main.bounds.height
    
    @IBOutlet weak var welcomeLabel: UILabel!

    //contentview from tutorial connection
    @IBOutlet weak var contentView: UIView!

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set initial qotd label value so it displays a quote
        amount = Int(arc4random_uniform(UInt32(GlobalData.quotes.count)))
        didLoadQuote = GlobalData.quotes[amount]
        self.qotd.text = didLoadQuote
        
        scrollview.isScrollEnabled = true
        scrollview.contentSize.height = height * 0.7
        
        //set welcome label = to welcome array
        welcomeLoadQuote = GlobalData.welcome[0]
        self.welcomeLabel.text = welcomeLoadQuote
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//final bracket for ViewController(Home)
}



