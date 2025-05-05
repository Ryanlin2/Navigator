//
//  CLLocation.swift
//  Navigator
//
//  Created by Ryan Lin on 5/2/25.
//

import CoreLocation
import Observation

@Observable
class LocationManager: NSObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()
    
    var location: CLLocation?
    var status: CLAuthorizationStatus?
    
    override init() {
        super.init()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager:CLLocationManager, didUpdateLocations locations:[CLLocation]){
        location = locations.first
    }
    
    
    func locationManagerDidChangeAuthorization(_ manager:CLLocationManager ){
        status = manager.authorizationStatus
        print("Authorization status: \(status!.rawValue)")
        
    }
}

