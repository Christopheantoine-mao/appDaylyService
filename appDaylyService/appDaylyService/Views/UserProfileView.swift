//
//  UserProfileView.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Nom d'utilisateur")
                    .font(.title)
                Text("Email de l'utilisateur")
                    .font(.subheadline)
            }
            .padding()
            
            List {
                Section(header: Text("Paramètres")) {
                    NavigationLink(destination: Text("Trajets quotidiens")) {
                        Text("Trajets quotidiens")
                    }
                    NavigationLink(destination: Text("Ma cagnotte")) {
                        Text("Ma cagnotte")
                    }
                    NavigationLink(destination: Text("Mes demandes")) {
                        Text("Mes demandes")
                    }
                    NavigationLink(destination: Text("Mes trajets")) {
                        Text("Mes trajets")
                    }
                    NavigationLink(destination: Text("Mes informations")) {
                        Text("Mes informations")
                    }
                    NavigationLink(destination: Text("Déconnexion")) {
                        Text("Déconnexion")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Profil")
            
            Button(action: {
                // Action du bouton
            }) {
                Text("Bouton Supplémentaire")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
        .background(Color(.systemGroupedBackground))
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UserProfileView()
        }
    }
}
