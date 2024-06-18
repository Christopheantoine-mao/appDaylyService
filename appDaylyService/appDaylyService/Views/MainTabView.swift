//
//  MainTabView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ServicesListView(viewModel: ServiceListViewModel())
                .tabItem {
                    Label("Services", systemImage: "gear")
                }
            NeighborsView(viewModel: NeighborsViewModel())
                .tabItem {
                    Label("Neighbors", systemImage: "person.3.fill")
                }
            CreateServiceView()
                .tabItem {
                    Label("Create", systemImage: "plus.circle")
                }
            WalletView()
                .tabItem {
                    Label("Wallet", systemImage: "creditcard")
                }
            MessageView(viewModel: MessagesViewModel())
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
            UserProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.circle")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}


