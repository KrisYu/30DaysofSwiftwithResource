# 30 Days of Swift with Resources

This project is a pure mimic of Allen Wang's [30DaysofSwift][id], I'm trying to redo what he had done, meanwhile, I'm going to provide more resources.



[id]:https://github.com/allenwong/30DaysofSwift



###Project 01 - SimpleStopWatch




![](Project 01 - SimpleStopWatch.gif =300x )


Useful links:


Auto Layout : <https://www.raywenderlich.com/115440/auto-layout-tutorial-in-ios-9-part-1-getting-started-2>


NSTimer : <http://www.ios-blog.co.uk/tutorials/swift/swift-nstimer-tutorial-lets-create-a-counter-application/>

<https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSTimer_Class/>

It took me some time figure out the `scheduledTimerWithTimeInterval` function. selector is followed by function, userInfo is set to nil, repeats should return true because we're repeatingly count time.
