//
//  MapView.swift
//  Navigator
//
//  Created by Ryan Lin on 5/2/25.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    @State private var locationManager = LocationManager() // ✅ works fine with @Observable

    var body: some View {
        VStack {
            if let loc = locationManager.location {
                Text("Latitude: \(loc.coordinate.latitude)")
                Text("Longitude: \(loc.coordinate.longitude)")
            } else {
                Text("No Location")
            }
        }
    }
}

#Preview {
    MapView()
}
