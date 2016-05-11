//
//  InterestCollectionViewCell.swift
//  Project 05 - CarouselEffect
//
//  Created by 雪 禹 on 5/11/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    
    //MARK: - Public API
    
    //MARK: - Private
    @IBOutlet weak var featuredImageView: UIImageView!
    
    @IBOutlet weak var interestTitleLabel: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    
}
