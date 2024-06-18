//
//  MessagesViewModel.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation
import Combine

class MessagesViewModel: ObservableObject {
    @Published var messages: [Message] = []
    
    init() {
        loadMessages()
    }
    
    func loadMessages() {
        // Ici, vous chargez les données des messages, soit à partir d'une source locale, soit en faisant une requête réseau.
        // Exemple de données factices :
        messages = [
            Message(id: UUID(), content: "Bonjour ! J'ai besoin de récupérer mes courses au drive de Centre 2. Pouvez-vous m'aider ?"),
            Message(id: UUID(), content: "Bonjour ! Je cherche une aide pour pouvoir chercher une course au ...")
        ]
    }
}
