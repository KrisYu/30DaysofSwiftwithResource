//
//  ViewController.swift
//  Project 07 - PullToRefresh
//
//  Created by 雪 禹 on 5/13/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let favEmojis = ["😈😈😈😈😈","💩💩💩💩💩","💅💅💅💅💅"]
    var tableData = [String]()
    let newEmojis = ["👻👻👻👻👻","👩‍❤️‍👩👩‍❤️‍👩👩‍❤️‍👩👩‍❤️‍👩👩‍❤️‍👩","👍🏻👍🏻👍🏻👍🏻👍🏻","👏👏👏👏👏","🌞🌞🌞🌞🌞","🍓🍓🍓🍓🍓"]
    
    var refreshControl = UIRefreshControl()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableData = favEmojis
        refreshControl.addTarget(self, action: #selector(ViewController.didReloadEmoji), forControlEvents: .ValueChanged)
        tableView.addSubview(refreshControl)
        

    }
    
    func didReloadEmoji() {
        let attributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        refreshControl.attributedTitle = NSAttributedString(string: "Last updated on \(NSDate())",attributes: attributes)
        refreshControl.tintColor = UIColor.whiteColor()
        
        tableData = newEmojis + favEmojis
        tableView.reloadData()
        refreshControl.endRefreshing()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.tableData[indexPath.row]
        cell.textLabel?.font = UIFont.systemFontOfSize(50)
        cell.textLabel?.textAlignment = .Center
        cell.backgroundColor = UIColor.clearColor()
        cell.selectionStyle = .None
        
        return cell
    }
}

