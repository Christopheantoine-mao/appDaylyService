//
//  ServiceListView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct ServicesListView: View {
    @ObservedObject var viewModel: ServiceListViewModel

    var body: some View {
        NavigationView {
            List(viewModel.services) { service in
                NavigationLink(destination: ServiceDetailView(service: service)) {
                    VStack(alignment: .leading) {
                        Text(service.name)
                            .font(.headline)
                        Text(service.description)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("Services")
        }
    }
}

struct ServicesListView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesListView(viewModel: ServiceListViewModel())
    }
}
