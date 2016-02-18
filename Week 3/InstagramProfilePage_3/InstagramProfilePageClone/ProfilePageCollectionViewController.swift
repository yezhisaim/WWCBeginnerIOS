//
//  ProfilePageCollectionViewController.swift
//  InstagramProfilePageClone
//
//  Created by Yezhisai Murugesan on 2/17/16.
//  Copyright © 2016 Isai. All rights reserved.
//

import UIKit

class ProfilePageCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 0
    }
    

    internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        return UICollectionViewCell()
    }
    

    internal func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    
    {
     return 0
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
