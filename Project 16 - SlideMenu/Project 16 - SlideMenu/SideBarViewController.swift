//
//  SideBarViewController.swift
//  Project 16 - SlideMenu
//
//  Created by 雪 禹 on 5/22/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class SideBarViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let menuItems = [" ","Everyday Moments","Poplular","Editors","Upcoming","Fresh","Stock-photos","Trending"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Table view data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MenuCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = menuItems[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
        
        return cell
    }



}
