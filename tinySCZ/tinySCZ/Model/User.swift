//
//  User.swift
//  tinySCZ
//
//  Created by 김보영 on 3/4/24.
//

import SwiftData

@Model
final class User {
    var id: PersistentIdentifier
    var name: String
    var achievements: Int
    
    init(id: PersistentIdentifier, name: String, achievements: Int) {
        self.id = id
        self.name = name
        self.achievements = achievements
    }
}
