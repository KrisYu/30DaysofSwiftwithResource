//
//  WelcomeViewController.swift
//  Project 12 - LoginAnimation
//
//  Created by 雪 禹 on 5/18/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var centerAlignUsername: NSLayoutConstraint!
    @IBOutlet weak var centerAlignPassword: NSLayoutConstraint!
    
    @IBOutlet weak var loginButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true,completion: nil)
    }
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        centerAlignUsername.constant -= view.bounds.width
        centerAlignPassword.constant -= view.bounds.width
        loginButton.alpha = 0
        
    }
    

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.5, delay: 0.00, options: .CurveEaseOut, animations: {
            self.centerAlignUsername.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            }, completion: nil)
    
        UIView.animateWithDuration(0.5, delay: 0.10, options: .CurveEaseOut , animations: {
            self.centerAlignPassword.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.20, options: .CurveEaseOut, animations: {
            self.loginButton.alpha = 1
            }, completion: nil)
        
    }
    
    
    @IBAction func loginButtonDidtouch(sender: UIButton) {
        
        let bounds = self.loginButton.bounds
        
        //Animate 
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .CurveLinear, animations: {
            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y:bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
            self.loginButton.enabled = false
            }, completion: {finished in self.loginButton.enabled = true})
    }
}
