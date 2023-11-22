//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Zach Mommaerts on 11/22/23.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
