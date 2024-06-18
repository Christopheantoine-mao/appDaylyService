//
//  ContentView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 45.523064, longitude: -122.676483),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var annotations: [MKPointAnnotation] {
        var annotations = [MKPointAnnotation]()
        
        // Example annotations
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 45.523064, longitude: -122.676483)
        annotation1.title = "Location 1"
        annotations.append(annotation1)
        
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 45.523064, longitude: -122.686483)
        annotation2.title = "Location 2"
        annotations.append(annotation2)
        
        // Add more annotations as needed
        
        return annotations
    }
    
    var body: some View {
        VStack {
            MapView(region: $region, annotations: annotations)
                .edgesIgnoringSafeArea(.all)
            
            // Other UI components
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
