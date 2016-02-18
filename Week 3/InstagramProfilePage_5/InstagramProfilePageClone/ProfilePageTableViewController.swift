//
//  ProfilePageTableViewController.swift
//  InstagramProfilePageClone
//
//  Created by Yezhisai Murugesan on 2/17/16.
//  Copyright © 2016 Isai. All rights reserved.
//

import UIKit

class ProfilePageTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return 10
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("profileTableViewCell", forIndexPath: indexPath) as! ProfilePageTableViewCell
     
        cell.username.text = Common.getUserName()
        
        Media.getMedia(){responseObj,error in
            if let error = error
            {
             print("Data could not be loaded: \(error)")
            }
            
            let resultArray = responseObj!["data"] as? NSArray
            
            let row = resultArray![indexPath.row] as? NSDictionary
            let images = row!["images"]! as? NSDictionary
            let imageString = images!["low_resolution"]!["url"]! as? String
            
            let url = NSURL(string: imageString!)
            let data = NSData(contentsOfURL: url!)
            cell.imageView?.image = UIImage(data: data!)
            
            var numLikes = 0 as Int
            numLikes = row!["likes"]!["count"]! as! Int
            cell.numLikes.text = "❤️ \(numLikes) likes"
            
        }
        
        
        return cell
        
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
