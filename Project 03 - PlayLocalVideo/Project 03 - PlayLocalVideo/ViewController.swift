//
//  ViewController.swift
//  Project 03 - PlayLocalVideo
//
//  Created by 雪 禹 on 5/9/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var videoTableView: UITableView!

    var data = [
        video(image:"videoScreenshot01",title: "Introduce 3D Mario",source: "Youtube - 06:32"),
        video(image:"videoScreenshot02",title: "Emoji Among us",source: "Vimeo - 03:34"),
        video(image:"videoScreenshot03",title: "Seals Documentary",source: "Vine - 00:06"),
        video(image:"videoScreenshot04",title: "Adventure Time",source: "Youtube - 02:39"),
        video(image:"videoScreenshot05",title: "Facebook HQ",source: "Facebook - 10:20"),
        video(image:"videoScreenshot06",title: "Lijiang Lugu Lake",source: "Allen - 20:30"),
        
    ]
    
    var playViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTableView.dataSource = self
        videoTableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playVideoButtonDidTouch(sender: AnyObject) {
        
        let path = NSBundle.mainBundle().pathForResource("emoji zone", ofType: "mp4")
        //print(path)
        
        let url = NSURL(fileURLWithPath: path!)
        playerView = AVPlayer(URL: url)
        
        playViewController.player = playerView
        
        self.presentViewController(playViewController, animated: true) {
            self.playViewController.player?.play()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = videoTableView.dequeueReusableCellWithIdentifier("VideoCell",forIndexPath: indexPath) as! VideoCell
        
        let video = data[indexPath.row]
        
        cell.videoScreenshot.image = UIImage(named: video.image)
        cell.videoTitleLabel.text = video.title
        cell.videoSourceLabel.text = video.source
        
        return cell
    }


}

