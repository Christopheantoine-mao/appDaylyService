//
//  NeighborsViewModel.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation
import Combine

class NeighborsViewModel: ObservableObject {
    @Published var neighbors: [User] = []
    
    init() {
        loadNeighbors()
    }
    
    func loadNeighbors() {
        neighbors = [
            User(id: UUID(), username: "Mario", email: "mario@example.com"),
            User(id: UUID(), username: "Marc", email: "marc@example.com")
        ]
    }
}

