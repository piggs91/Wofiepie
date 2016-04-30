//
//  ViewController.swift
//  WoofiePie
//
//  Created by Ravi Rathore on 4/25/16.
//  Copyright © 2016 com.banago. All rights reserved.
//

import UIKit
import JSQSystemSoundPlayer
import JSQMessagesViewController
import Firebase


class ViewController : UIViewController {

    let ref = Firebase(url: "https://woofiepie.firebaseio.com/inbox/rpsr15")
    let user = "rpsr15"
    var chats = [String]()

 override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    @IBAction func loginDidTouch(sender: AnyObject) {
        ref.authAnonymouslyWithCompletionBlock { (error, authData) in // 1
            if error != nil { print(error.description); return } // 2
            else{
                print("performing segue")
            self.performSegueWithIdentifier("LoginToChat", sender: nil) // 3
            }
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let navigationController = segue.destinationViewController as! UINavigationController
        let chatVC = navigationController.viewControllers.first as! ChatViewController
        
        chatVC.senderId = ref.authData.uid
        chatVC.senderDisplayName = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

