//
//  Meditation.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import Foundation
import Firebase

class Meditation {
    
    var name: String
    var length: TimeInterval
    var downloadURL: String
    
    init(name: String, length: TimeInterval, downloadURL: String) {
        self.name = name
        self.length = length
        self.downloadURL = downloadURL
    }
}
