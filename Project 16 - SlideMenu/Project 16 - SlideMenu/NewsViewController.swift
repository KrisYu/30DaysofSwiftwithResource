//
//  NewsViewController.swift
//  Project 16 - SlideMenu
//
//  Created by 雪 禹 on 5/22/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    var sidebarIsOpen: Bool?

    @IBOutlet weak var tableView: UITableView!

    let newsData = [["1","Love mountain.","AllenWong","a"],["2","New graphic design - LIVE FREE","Kris","b"],["3","Summer sand","Guo","c"],["4","Seeking for signal","Ling","d"],["5","Wish me good luck","Seriously","e"]]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        sidebarIsOpen = false
        self.title = "Everyday Moments"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    @IBAction func showMenuButtonDidTouch(sender: UIBarButtonItem) {
        
        let x = self.sidebarIsOpen! ? 0 : self.view.frame.width
        UIView.animateWithDuration(0.2, animations: {
            self.view.frame = CGRect(x:x, y:0, width:self.view.frame.width, height:self.view.frame.height)
            }, completion: { _ in
                self.sidebarIsOpen = !(self.sidebarIsOpen!)
        })
        
    }
    

    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsData.count
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell", forIndexPath: indexPath) as! NewsTableViewCell
        
        let cellData = newsData[indexPath.row]
        
        cell.authorImageView.image = UIImage(named: cellData[3])
        cell.postImageView.image = UIImage(named: cellData[0])
        cell.postTitle.text = cellData[1]
        cell.postAuthor.text = cellData[2]
        
        
        return cell
    }
}
