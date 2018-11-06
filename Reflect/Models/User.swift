//
//  User.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import Foundation

class User {
    
    var name  : String
    var email : String
    var dayStreak = Int()
    var totalTime = TimeInterval()
    
    init(name: String, email: String) {
        self.name  = name
        self.email = email
    }
}
