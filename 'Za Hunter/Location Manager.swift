//
//  Location Manager.swift
//  'Za Hunter
//
//  Created by Benny Chopra on 2/21/25.
//

import Foundation
import CoreLocation
class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

