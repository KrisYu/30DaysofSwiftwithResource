//
//  TableViewCell.swift
//  Project 11 - ClearTableViewCell
//
//  Created by 雪 禹 on 5/17/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let gradientLayer = CAGradientLayer()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        gradientLayer.frame = self.bounds
        let color1 = UIColor(white: 1.0, alpha: 0.2).CGColor as CGColorRef
        let color2 = UIColor(white: 1.0, alpha: 0.1).CGColor as CGColorRef
        let color3 = UIColor.clearColor().CGColor as CGColorRef
        let color4 = UIColor(white: 0.0, alpha: 0.1).CGColor as CGColorRef
        
        gradientLayer.colors = [color1,color2,color3,color4]
        gradientLayer.locations = [0.0,0.01,0.95,1.0]
        layer.insertSublayer(gradientLayer, atIndex: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    


}
