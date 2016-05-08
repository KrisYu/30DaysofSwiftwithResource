//
//  ViewController.swift
//  Project 01 - SimpleStopWatch
//
//  Created by 雪 禹 on 5/8/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var Counter = 0.0
    var Timer = NSTimer()
    var IsPlaying = false
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(Counter)
    }
    
    
    @IBAction func resetButtonDidTouch(sender: AnyObject) {
        Timer.invalidate()
        IsPlaying = false
        Counter = 0
        timeLabel.text = String(Counter)
        playBtn.enabled = true
        pauseBtn.enabled = true
    }
    
    @IBAction func playButtonDidTouch(sender: AnyObject) {
        if IsPlaying {
            return
        }
        
        playBtn.enabled = false
        pauseBtn.enabled = true
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        IsPlaying = true
    }
    
    
    @IBAction func pauseButtonDidTouch(sender: AnyObject) {
        playBtn.enabled = true
        pauseBtn.enabled = false
        Timer.invalidate()
        IsPlaying = false
    }
    
    func UpdateTimer(){
        Counter = Counter + 0.1
        timeLabel.text = String(format: "%.1f",Counter)
    }
    


}

