//
//  FirstTableViewController.swift
//  Project 13 - AnimateTableViewCell
//
//  Created by 雪 禹 on 5/19/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var tableData = ["Write email to prof","Practice Driving","Package my things","Finish hw1","Love my life","Play 🏀","Buy some vegatables"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.sharedApplication().statusBarHidden = true
        
        self.view.backgroundColor = UIColor.blackColor()
        self.tableView.separatorStyle = .None
        self.tableView.tableFooterView = UIView(frame:CGRectZero)
        self.tableView.registerClass(FirstTableCell.self, forCellReuseIdentifier: "FirstTableCell")
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // MARK: - Animation
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        animation()
    }
    
    func animation(){
        
        self.tableView.reloadData()
        
        let cells = tableView.visibleCells
        let tableHeight = tableView.bounds.size.height
        
        for (index, cell) in cells.enumerate() {
            cell.transform = CGAffineTransformMakeTranslation(0, tableHeight)
            UIView.animateWithDuration(1.0, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = CGAffineTransformMakeTranslation(0, 0)
                }, completion: nil)
        }
    }




    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FirstTableCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = tableData[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.backgroundColor = UIColor.clearColor()
        cell.textLabel?.font = UIFont(name: "Avenir Next",size: 18)
        cell.selectionStyle = .None
        
        return cell

    }


    // MAKR: - color for cell
    
    func colorforIndex(index: Int) -> UIColor {
        
        let itemCount = tableData.count - 1
        let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: color, green: 0.0, blue: 1.0, alpha: 1.0)
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        cell.backgroundColor = colorforIndex(indexPath.row)
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("ShowAnimateTableViewController", sender: nil)
    }
}
