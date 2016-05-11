//
//  ViewController.swift
//  Project 04 -SnapChatMenu
//
//  Created by 雪 禹 on 5/10/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarHidden = true
        
        // leftView is actually a viewcontroller
        let leftView : LeftView  = LeftView(nibName: "LeftView" , bundle: nil)
        let rightView : RightView = RightView(nibName: "RightView" , bundle: nil)
        let centerView : CameraView = CameraView(nibName: "CameraView" , bundle: nil)
        
        self.addChildViewController(leftView)
        self.scrollView.addSubview(leftView.view)
        leftView.didMoveToParentViewController(self)

        self.addChildViewController(rightView)
        self.scrollView.addSubview(rightView.view)
        rightView.didMoveToParentViewController(self)
        
        self.addChildViewController(centerView)
        self.scrollView.addSubview(centerView.view)
        centerView.didMoveToParentViewController(self)
        
        var centerViewFrame: CGRect = centerView.view.frame
        centerViewFrame.origin.x = self.view.frame.width
        centerView.view.frame = centerViewFrame
        
        var rightViewFrame: CGRect = rightView.view.frame
        rightViewFrame.origin.x = 2 * self.view.frame.width
        rightView.view.frame = rightViewFrame
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.size.height)
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

