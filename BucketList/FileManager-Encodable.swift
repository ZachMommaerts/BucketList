//
//  FileManager-Encodable.swift
//  BucketList
//
//  Created by Zach Mommaerts on 11/16/23.
//

import Foundation

extension FileManager {
    func decode<T: Codable>(_ file: String) -> T {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let url = path.appendingPathComponent(file)
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from the Documents Directory")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
