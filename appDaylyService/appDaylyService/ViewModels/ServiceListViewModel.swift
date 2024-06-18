//
//  ServiceListViewModel.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation
import Combine

class ServiceListViewModel: ObservableObject {
    @Published var services: [Service] = []
    
    init() {
        loadServices()
    }
    
    func loadServices() {
        // Ici, vous chargez les données des services, soit à partir d'une source locale, soit en faisant une requête réseau.
        // Exemple de données factices :
        services = [
            Service(id: UUID(), name: "Nettoyage", description: "Service de nettoyage complet pour bureaux et domiciles.", isAvailable: true),
            Service(id: UUID(), name: "Jardinage", description: "Entretien des espaces verts et jardins.", isAvailable: true),
            Service(id: UUID(), name: "Plomberie", description: "Réparations et installations sanitaires.", isAvailable: false)
        ]
    }
}
