//
//  ClearTableViewController.swift
//  Project 11 - ClearTableViewCell
//
//  Created by 雪 禹 on 5/17/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class ClearTableViewController: UITableViewController {
    
    var tableData = ["Watch 3rd episode","Write email to prof","Meet Ash for dinner","Talk with mom","Practise driving","Another Swift project","play PingPong with Guo","Invite everyone play","The meaning of life","Grow up, be strong","Read KevinZhou's tutorial","Ready for Summer"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.blackColor()
        self.tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "tableCell")
    }
    
    //hidden status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as! TableViewCell
        
        cell.textLabel?.text = tableData[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Avenir Next",size: 18)
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.backgroundColor = UIColor.clearColor()
        

        return cell
    }

    func colorForIndex(index: Int) -> UIColor {
        let itemCount = tableData.count - 1
        let color = (CGFloat(index)/CGFloat(itemCount)) * 0.6
        return UIColor(red: 1.0, green: color, blue : 0.0,alpha: 1.0)
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = colorForIndex(indexPath.row)
    }
    
    

}
