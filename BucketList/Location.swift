//
//  Location.swift
//  BucketList
//
//  Created by Zach Mommaerts on 11/21/23.
//

import Foundation

struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
}
