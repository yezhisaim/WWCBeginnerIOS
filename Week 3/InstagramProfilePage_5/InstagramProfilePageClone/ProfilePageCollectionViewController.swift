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
        self.collectionView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    

    internal func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("profileCollectionViewCell", forIndexPath: indexPath) as! ProfilePageCollectionViewCell
        
        
        
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
            cell.photoView?.image = UIImage(data: data!)
            
        }
        
        
        return cell
    }
    

    internal func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    
    {
     return 3
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
