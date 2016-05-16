//
//  ViewController.swift
//  Project 10 - VideoBackground
//
//  Created by 雪 禹 on 5/16/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class ViewController: VideoSplashViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVideoBackground()
    }
    
    func setupVideoBackground() {
        
        if let path = NSBundle.mainBundle().pathForResource("moments", ofType: "mp4"){
            let url = NSURL.fileURLWithPath(path)
            
            videoFrame = view.frame
            fillMode = .ResizeAspectFill
            alwaysRepeat = true
            sound = true
            startTime = 2.0
            alpha = 0.8
            
            contentURL = url
            view.userInteractionEnabled = false
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }


}

