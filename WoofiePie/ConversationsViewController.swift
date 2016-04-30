//
//  ConversationsViewController.swift
//  WoofiePie
//
//  Created by Ravi Rathore on 4/29/16.
//  Copyright © 2016 com.banago. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
   static let conversationCellIdenifier = "conversationCell"
    @IBOutlet weak var conversationList : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.conversationList.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ConversationsViewController.conversationCellIdenifier)
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
