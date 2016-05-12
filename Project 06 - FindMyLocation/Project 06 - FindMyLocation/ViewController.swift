//
//  ViewController.swift
//  Project 06 - FindMyLocation
//
//  Created by 雪 禹 on 5/12/16.
//  Copyright © 2016 XueYu. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager!

    
    
    @IBOutlet weak var locationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }



    @IBAction func myLocationButtonDidTouch(sender: AnyObject) {
        
        locationManager = CLLocationManager()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler:{(placemarks,error) ->
        Void in
            if error != nil{
                self.locationLabel.text = "Reverse geocoder failed with error" + error!.localizedDescription
                return
            }
            
            if placemarks?.count > 0{
                let pm = placemarks![0]
                self.displayLocationInfo(pm)
            } else {
                self.locationLabel.text = "Problem with the data received from geocoder"
            }
        
        })
    }
    
    func displayLocationInfo(placemark: CLPlacemark){
        
        self.locationManager.stopUpdatingLocation()
        
        let locality = placemark.locality ?? ""
        let administrativeArea = placemark.administrativeArea ?? ""
        let country = placemark.country ?? ""
        
        self.locationLabel.text = locality + administrativeArea + country
    }

}

