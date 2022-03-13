//
//  CharacterManager.swift
//  Chapter14TableViewPropertyList
//
//  Created by user209373 on 3/13/22.
//

import Foundation

class CharacterManager {
    var characterNames: [String] = []
    
    init() {
        if let bundlePath = Bundle.main.path(forResource: "CharactersPropertyList", ofType: "plist"),
           let fileContent = FileManager.default.contents(atPath: bundlePath)
            {
            characterNames = ((try? PropertyListSerialization.propertyList(from: fileContent, options: .mutableContainersAndLeaves, format: nil)) as? [String])!
            }
    }
}
