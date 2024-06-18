//
//  User.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation

struct User: Identifiable, Codable {
    var id: UUID
    var username: String
    var email: String
}

