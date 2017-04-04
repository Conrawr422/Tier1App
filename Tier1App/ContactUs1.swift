//
//  ContactUs1.swift
//  TierOneApp
//
//  Created by CRESS, CONNER on 1/3/17.
//  Copyright © 2017 CRESS, CONNER. All rights reserved.
//

import UIKit
import Foundation

class ContactUs1: UIViewController {
    
    var devLoad = ""

    @IBOutlet weak var devLabel: UILabel!
    
    
    //opens email address when clicked
    @IBAction func openMail(_ sender: AnyObject) {
        let email = "codybeam@t1ptraining.com"
        let url = NSURL(string: "mailto:\(email)")
        
        
        //gives alert a name and title
        let alertController = UIAlertController(title: "Open Email", message:
            "Send an email to Cody Beam", preferredStyle: UIAlertControllerStyle.alert)
        
        //sets one option as yes
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            //opens email
            UIApplication.shared.openURL(url as! URL)
                    }
        
        //sets one option as cancel
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
        
     //end bracket of button function
    }
    
    
    
    //opens messages when clicked
    @IBAction func openMessage(_ sender: AnyObject) {
    

    let alertController = UIAlertController(title: "Open New Message", message:
        "Send a text to Cody Beam", preferredStyle: UIAlertControllerStyle.alert)
    
    //sets one option as yes
    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
        UIAlertAction in
        //opens sms
        let number = "sms:7633544636"
        UIApplication.shared.openURL(NSURL(string: number)! as URL)
    }
    
    //sets one option as cancel
    alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    
    alertController.addAction(okAction)
    self.present(alertController, animated: true, completion: nil)
   
    //end bracket of button function
    }
    
    @IBAction func openPhoneCall(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "Make Phone Call", message:
            "Make a Phone Call to Cody Beam", preferredStyle: UIAlertControllerStyle.alert)
        
        //sets one option as yes
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            //opens sms
            let number = "tel:7633544636"
            UIApplication.shared.openURL(NSURL(string: "tel://7633544636")! as URL)        }
        
        //sets one option as cancel
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func emailMe(_ sender: AnyObject) {
        
        let email = "connercress@gmail.com"
        let url = NSURL(string: "mailto:\(email)")
        
        
        //gives alert a name and title
        let alertController = UIAlertController(title: "Open Email", message:
            "Send an email to the Developer", preferredStyle: UIAlertControllerStyle.alert)
        
        //sets one option as yes
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            //opens email
            UIApplication.shared.openURL(url as! URL)
        }
        
        //sets one option as cancel
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    
    devLoad = GlobalData.devInfo[0]
    self.devLabel.text = devLoad
    
    }
    
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
 //final bracket
}
