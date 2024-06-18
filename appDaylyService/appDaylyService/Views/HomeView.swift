//
//  HomeView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI
import MapKit

struct HomeView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 45.4215, longitude: -75.6972),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    let annotations = [
        Annotation(title: "Mario", subtitle: "Voiture", coordinate: CLLocationCoordinate2D(latitude: 45.4215, longitude: -75.6972)),
        Annotation(title: "Marc", subtitle: "Voiture", coordinate: CLLocationCoordinate2D(latitude: 45.4315, longitude: -75.6872)),
        Annotation(title: "Charles", subtitle: "Vélo", coordinate: CLLocationCoordinate2D(latitude: 45.4115, longitude: -75.6772)),
        Annotation(title: "Marie", subtitle: "Vélo", coordinate: CLLocationCoordinate2D(latitude: 45.4415, longitude: -75.6672)),
        Annotation(title: "Jean", subtitle: "Voiture", coordinate: CLLocationCoordinate2D(latitude: 45.4515, longitude: -75.6572))
    ]
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
                MapPin(coordinate: annotation.coordinate, tint: .red)
            }
            .frame(height: 300)
            
            VStack {
                Text("Bonjour,")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Que souhaitez-vous faire aujourd'hui?")
                    .font(.subheadline)
                HStack {
                    Button(action: {
                        // Action pour voir les annonces
                    }) {
                        Text("Voir les annonces?")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        // Action pour créer une annonce
                    }) {
                        Text("Créer une annonce?")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            
            Spacer()
            
            HStack {
                Spacer()
                NavigationLink(destination: CreateServiceView()) {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Annotation: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let coordinate: CLLocationCoordinate2D
}

