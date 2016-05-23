//
//  NewsTableViewCell.swift
//  Project 16 - SlideMenu
//
//  Created by 雪 禹 on 5/22/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    

    @IBOutlet weak var postImageView: UIImageView!

    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postAuthor: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        authorImageView.layer.cornerRadius = authorImageView.bounds.width/2
        authorImageView.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
