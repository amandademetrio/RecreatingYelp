//
//  ViewController.swift
//  RecreatingYelp
//
//  Created by Amanda Demetrio on 9/18/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    var userLocation: CLLocation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.userTrackingMode = .follow
        self.locationManager.requestAlwaysAuthorization()
        
        if(CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
            CLLocationManager.authorizationStatus() ==  .authorizedAlways){
            userLocation = locationManager.location
            let lat = (userLocation?.coordinate.latitude)!
            let long = (userLocation?.coordinate.longitude)!
            print("user location is",lat,long)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

