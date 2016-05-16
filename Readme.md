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
 


###Project 04 - Snap Chat Menu

![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2004%20-SnapChatMenu/Project%2004%20-SnapChatMenu.gif?raw=true)



I have problems with AutoLayout, the constrains, my project is so ugly compared with the original one.

Resources: 

<https://www.youtube.com/watch?v=1_daE3IL_1s>

<https://www.youtube.com/watch?v=994Hsi1zs6Q>


###Project 05 - CarouselEffect
![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2005%20-%20CarouselEffect/Project%2005%20-%20CarouselEffect.gif?raw=true)


Resources:

UICollectionView is just like UITableView, you could make it if you know UITableView well, the whole tutorial can be found here:

<https://www.youtube.com/watch?v=JG7mWFcU0vk>


What impressed me is that the tutorial did things in the unusual way in this tutorial, like use Extension and didset to change UI.

I implement it more the common and easier way.

Found some hints why my view is ugly, for image fill, I should aspect fill.

<http://blog.csdn.net/annkie/article/details/49247755>


### Project 06 - Find My Location


![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2006%20-%20FindMyLocation/Project%2006%20-%20FindMyLocation.gif?raw=true)

It took me some time to figure out why his App is looks so gorgeous, then I found out he used background image, blur effect, nice button background image, designer behavior.

Video tutorial: <https://www.youtube.com/watch?v=kkVI3njOlqU>

There're many different coding styles can be used to call the CLLocationManager, just make sure you add the plist and also save the battery.

### Project 07 - Pull To Refresh

![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2007%20-%20PullToRefresh/Project%2007%20-%20PullToRefresh.gif?raw=true)

Video tutorial: <https://www.youtube.com/watch?v=F-7xwYh1CS4>

If you have a tableViewController, you can just get RefreshControl in this way. get it in interface builder.
<https://medium.com/ios-os-x-development/ios-tips-pull-to-refresh-in-less-than-30-seconds-ef884520f0df#.lhklb6ftj>

If you just have a tableView without controller, you can get add the RefreshControl this way.
<http://stackoverflow.com/questions/10291537/pull-to-refresh-uitableview-without-uitableviewcontroller>


For UI, a lot of things you can set both in code and Interface builder, I set some them in Interface Builder.


### Project 08 - RandomGradientColorMusic

![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2008%20-%20%20RandomGradientColorMusic/Project%2008%20-%20GradientColorMusic%20.gif?raw=true)


A great article about CALayer, including gradient layer : <https://www.raywenderlich.com/90488/calayer-in-ios-with-swift-10-examples>

UI vs CG : CG is for CoreGraphics, it feels more to the core OS, UI feels itself   already packed for the developer.


### Project 09 - ImageScroll

![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2009%20-%20ImageScroller/Project%2009%20-%20ImageScroller.gif?raw=true)

I'm lazy toda, followed this tutorial, write four lines of code to implement this, didn't try to recenter the image or other... also create UIScrollView from Interface Builder, not code.

Video Tutorial: 
<https://www.youtube.com/watch?v=nre-ALSA740>

### Project 10 - VideoBackground 

![](https://github.com/KrisYu/30DaysofSwiftwithResource/blob/master/Project%2010%20-%20VideoBackground/Project%2010%20-%20VideoBackground.gif?raw=true)



It's time to use other code in your App.

you got have this first : <https://github.com/movielala/VideoSplashKit>

Then you can follow this video tutorial : <https://www.youtube.com/watch?v=dIoLsD9kBJ0&index=1&list=LLUS_GStRI7zBGfy1SVfDQOQ>
 

And finally, I found a way to setup rounded corner button in Storyboard, just fantastic.
<http://stackoverflow.com/questions/18384832/no-round-rect-button-in-xcode-5> 

Also, notice did the lauchscreen view this time.

