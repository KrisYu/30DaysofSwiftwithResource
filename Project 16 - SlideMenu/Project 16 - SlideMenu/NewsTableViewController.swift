//
//  NewsTableViewController.swift
//  Project 16 - SlideMenu
//
//  Created by 雪 禹 on 5/22/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var sideBarIsOpen: Bool?
    
    
    let newsData = [["1","Love mountain.","AllenWong","a"],["2","New graphic design - LIVE FREE","Kris","b"],["3","Summer sand","Guo","c"],["4","Seeking for signal","Ling","d"],["5","Wish me good luck","Seriously","e"]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.title = "Everyday Moments"
        sideBarIsOpen = false
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell", forIndexPath: indexPath) as! NewsTableViewCell
        
        let cellData = newsData[indexPath.row]
        
        cell.authorImageView.image = UIImage(named: cellData[3])
        cell.postImageView.image = UIImage(named: cellData[0])
        cell.postTitle.text = cellData[1]
        cell.postAuthor.text = cellData[2]
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

 
    // MARK: - Navigation
    
    
    @IBAction func menuButtonDidTouch(sender: UIBarButtonItem) {
        let x = self.sideBarIsOpen! ? 0: self.view.bounds.width
        
        UIView.animateWithDuration(0.2, animations: { 
            self.view.frame = CGRect(x: x, y:0, width:self.view.bounds.width,height:self.view.bounds.height)
            }) { _ in
                self.sideBarIsOpen = !(self.sideBarIsOpen!)
        }
    }

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }
    */
 

}
