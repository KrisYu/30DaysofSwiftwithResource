//
//  Interest.swift
//  Project 05 - CarouselEffect
//
//  Created by 雪 禹 on 5/11/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class Intereset {
    //MARK: - Public API
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage: UIImage!
    
    init(title: String, description : String, featuredImage: UIImage!){
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        numberOfMembers = 1
        numberOfPosts = 1
    }
    
    //MARK: - Private
    //dummy data
    static func createInterests() -> [Intereset]{
        return[
            Intereset(title:"I'm wearing red socks",description: "I love red socks! We walked to Antaritica yesterday, and camped with some cute pinguines, and tablked about this wonderful app idea. 🐧⛺️✨",featuredImage: UIImage(named:"hhhhh")!),
            Intereset(title:" 炒鸡麻利 🐔🐴",description: "Mario , who is mario? We walked to Antaritica yesterday, and camped with some cute pinguines, and tablked about this wonderful app idea. 🐧⛺️✨",featuredImage: UIImage(named:"mario")!),
            Intereset(title:"Hello there , i miss u.",description: "We love backpack and adventures! We walked to Antaritica yesterday, and camped with some cute pinguines, and tablked about this wonderful app idea. 🐧⛺️✨",featuredImage: UIImage(named:"hello")!),
            Intereset(title:"🐳🐳🐳🐳🐳",description: "We love romantic stories! We walked to Antaritica yesterday, and camped with some cute pinguines, and tablked about this wonderful app idea. 🐧⛺️✨",featuredImage: UIImage(named:"dudu")!),
            Intereset(title:"Training like this, # bodyline",description: "I want to be fit and healthy! We walked to Antaritica yesterday, and camped with some cute pinguines, and tablked about this wonderful app idea. 🐧⛺️✨",featuredImage: UIImage(named:"bodyline")!),
           Intereset(title:"I'm not hungy, indeeded",description: "We love romantic stories! We walked to Antaritica yesterday, and camped with some cute pinguines, and tablked about this wonderful app idea. 🐧⛺️✨",featuredImage: UIImage(named:"wave")!)

            
        ]

    }
}