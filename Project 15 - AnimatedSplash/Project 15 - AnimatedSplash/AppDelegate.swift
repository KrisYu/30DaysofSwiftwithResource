//
//  AppDelegate.swift
//  Project 15 - AnimatedSplash
//
//  Created by 雪 禹 on 5/21/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mask: CALayer?
    var imageView: UIImageView?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow()
        self.window!.backgroundColor = UIColor(red:0.117,green: 0.631,blue:0.949,alpha: 1)
        self.window!.makeKeyAndVisible()
        
        self.window!.rootViewController = UIViewController()
        let mainView = self.window!.rootViewController!.view
        
        let imageView = UIImageView(frame: self.window!.frame)
        imageView.image = UIImage(named: "twitterscreen")
        mainView.addSubview(imageView)
        
        mask = CALayer()
        mask!.contents = UIImage(named: "logo")!.CGImage
        mask!.contentsGravity = kCAGravityResizeAspect
        mask!.bounds = CGRect(x: 0, y: 0, width: 100, height: 81)
        mask!.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        mask!.position = CGPoint(x: imageView.frame.size.width / 2, y: imageView.frame.size.height / 2)
        
        imageView.layer.mask = mask
        self.imageView = imageView
        
        animateMask()
        
        UIApplication.sharedApplication().statusBarHidden = true
    
        return true
    }
    
    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    func animateMask(){
        let keyFrameAnimation = CAKeyframeAnimation(keyPath: "bounds")
        keyFrameAnimation.delegate = self
        keyFrameAnimation.duration = 1.0
        keyFrameAnimation.beginTime = CACurrentMediaTime() + 1
        let initBounds = NSValue(CGRect:mask!.bounds)
        let secondBounds = NSValue(CGRect: CGRect(x:0,y: 0,width: 90,height: 90))
        let finalBounds = NSValue(CGRect: CGRect(x: 0,y: 0,width: 1500,height: 1500))
        keyFrameAnimation.values = [initBounds,secondBounds,finalBounds]
        keyFrameAnimation.keyTimes = [0,0.3,1]
        keyFrameAnimation.timingFunctions = [CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut),CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)]
        self.mask!.addAnimation(keyFrameAnimation, forKey: "bounds")
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        self.imageView!.layer.mask = nil
    }


}

