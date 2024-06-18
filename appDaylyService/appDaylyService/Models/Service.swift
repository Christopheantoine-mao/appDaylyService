//
//  Service.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation

struct Service: Identifiable, Codable {
    var id: UUID
    var name: String
    var description: String
    var isAvailable: Bool
}

