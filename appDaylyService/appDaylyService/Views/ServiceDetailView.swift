//
//  ServiceDetailView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct ServiceDetailView: View {
    var service: Service
    @State private var isBooked: Bool = false

    var body: some View {
        VStack {
            Text(service.name)
                .font(.largeTitle)
            Text(service.description)
                .padding()
            Button(isBooked ? "Cancel Booking" : "Book Now") {
                isBooked.toggle()
            }
            .padding()
            .background(isBooked ? Color.red : Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

struct ServiceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceDetailView(service: Service(id: UUID(), name: "Sample Service", description: "This is a sample service description.", isAvailable: true))
    }
}
