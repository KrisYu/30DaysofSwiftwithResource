//
//  HomeViewController.swift
//  Project 05 - CarouselEffect
//
//  Created by 雪 禹 on 5/11/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    //MARK: IBOutlets
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: UICollectionViewDataSource
    private var interests = Intereset.createInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ContentCell", forIndexPath: indexPath) as! InterestCollectionViewCell
        
        cell.featuredImageView.image = interests[indexPath.item].featuredImage
        cell.interestTitleLabel.text = interests[indexPath.item].title
        

        
        return cell
    }
    
    

}
