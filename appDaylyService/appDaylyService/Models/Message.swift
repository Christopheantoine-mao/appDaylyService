//
//  Message.swift
//  appDaylyService
//
//  Created by formation on 17/06/2024.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: UUID
    var content: String
}
