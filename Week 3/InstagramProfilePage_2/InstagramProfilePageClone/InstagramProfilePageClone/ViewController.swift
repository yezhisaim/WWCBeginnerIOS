//
//  ViewController.swift
//  InstagramProfilePageClone
//
//  Created by Yezhisai Murugesan on 2/17/16.
//  Copyright © 2016 Isai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Main UI Components
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var bio: UILabel!
    @IBOutlet weak var postCount: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    
    @IBOutlet weak var toggleViews: UISegmentedControl!
    
    @IBOutlet weak var collectionViewVC: UIView!
    @IBOutlet weak var tableViewVC: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleViewAction(sender: AnyObject) {
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

