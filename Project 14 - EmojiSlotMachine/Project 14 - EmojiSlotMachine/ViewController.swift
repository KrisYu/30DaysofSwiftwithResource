//
//  ViewController.swift
//  Project 14 - EmojiSlotMachine
//
//  Created by 雪 禹 on 5/20/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    
    //MARK: Data and Action
    let imageArray = ["💩","👹","👽","🤖","😻","💵","🍓","🍖","🍟","🌮"]
    var dataArray0 = [Int]()
    var dataArray1 = [Int]()
    var dataArray2 = [Int]()
    var bounds: CGRect = CGRectZero
    
    func prepareData() {
        
        for _ in 0..<100 {
            dataArray0.append(Int(arc4random_uniform(10)))
            dataArray1.append(Int(arc4random_uniform(10)))
            dataArray2.append(Int(arc4random_uniform(10)))
        }
    }
    
    
    @IBOutlet weak var emojiPickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    
    @IBAction func goButtonDidTouch(sender: UIButton) {
        
        emojiPickerView.selectRow(Int(arc4random_uniform(90) + 3), inComponent: 0, animated: true)
        emojiPickerView.selectRow(Int(arc4random_uniform(90) + 3), inComponent: 1, animated: true)
        emojiPickerView.selectRow(Int(arc4random_uniform(90) + 3), inComponent: 2, animated: true)
        
        if(dataArray0[emojiPickerView.selectedRowInComponent(0)] == dataArray1[emojiPickerView.selectedRowInComponent(1)] && dataArray1[emojiPickerView.selectedRowInComponent(1)] == dataArray2[emojiPickerView.selectedRowInComponent(2)]){
            resultLabel.text = "Bingo!"
        } else {
            resultLabel.text = "💔"
        }
        
        bounds = self.goButton.bounds

        
        
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 5, options: .CurveLinear, animations: { 
            self.goButton.bounds = CGRect(x:self.bounds.origin.x , y:  self.bounds.origin.y,width: self.bounds.size.width + 20 ,height: self.bounds.size.height)
        }) { (complete: Bool) in
                UIView.animateWithDuration(0.1, delay: 0.0, options: .CurveLinear, animations: {
                    self.goButton.bounds = CGRect(x:self.bounds.origin.x , y:  self.bounds.origin.y,width: self.bounds.size.width ,height: self.bounds.size.height)
                    }, completion: nil)
        }
        
        

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareData()
    }
    
    //MARK: Animation
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        goButton.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.5, delay: 0.3, options: .CurveEaseOut, animations: { 
            self.goButton.alpha = 0.8
            }, completion: nil)
    }
    
    
    
    
    //MARK: PickerView
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 100
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100.0
    }
    

    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let pickerLabel = UILabel()
        

        switch component {
        case 0:
            print(dataArray0[row])
            pickerLabel.text = imageArray[dataArray0[row]]
        case 1:
            pickerLabel.text = imageArray[dataArray1[row]]
        case 2:
            pickerLabel.text = imageArray[dataArray2[row]]
        default:
            break
        }
        
        pickerLabel.font = UIFont(name: "Apple Color Emoji", size: 80)
        pickerLabel.textAlignment = .Center
        
        return pickerLabel

    }
    
    

}

