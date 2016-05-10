# 30 Days of Swift with Resources

This project is a pure mimic of Allen Wang's [30DaysofSwift][id], I'm trying to redo what he had done, meanwhile, I'm going to provide more resources.



[id]:https://github.com/allenwong/30DaysofSwift



###Project 01 - SimpleStopWatch


![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2001%20-%20SimpleStopWatch/project%2001SimpleStopWatch.gif?raw=true)





Auto Layout : <https://www.raywenderlich.com/115440/auto-layout-tutorial-in-ios-9-part-1-getting-started-2>


NSTimer : <http://www.ios-blog.co.uk/tutorials/swift/swift-nstimer-tutorial-lets-create-a-counter-application/>

A youtube video about NSTimer : <https://www.youtube.com/watch?v=X_Z7nAyUbj4>

<https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSTimer_Class/>

It took me some time figure out the `scheduledTimerWithTimeInterval` function. selector is followed by function, userInfo is set to nil, repeats should return true because we're repeatingly count time.


###Project 02 - Custom Font


![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2002%20-%20CustomFont/Project02%20-%20CustomFont.gif?raw=true)

Custom Font in swift : <https://grokswift.com/custom-fonts/>

UITableView : make sure you understand delegate, datasource before you try to implement this. maybe read here, actually I myself didn't understand them quite well.

<https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson7.html#//apple_ref/doc/uid/TP40015214-CH8-SW1>



Possible improvements :  make a Custom UIButton, then apply the change font button as custom UIButton. like here ?

<https://www.raywenderlich.com/90690/modern-core-graphics-with-swift-part-1>


###Project 03 - Play Local Video

![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2003%20-%20PlayLocalVideo/Project%2003%20-%20PlayLocalVideo.gif?raw=true)


Custom Cell for UITableViewCell :  <https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson7.html#//apple_ref/doc/uid/TP40015214-CH8-SW1>

It seemed that the playViewController is like the UIPageView, no view actully exists in this case.

Also notice here used a video struct, not a class.
 




