//
//  Meditation.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class Meditation {
    
    var name        : String
    var length      : TimeInterval
    var icon        : UIImage!
    var downloadURL : String
    
    init(name: String, length: TimeInterval, icon: UIImage!, downloadURL: String) {
        self.name        = name
        self.length      = length
        self.icon        = icon
        self.downloadURL = downloadURL
    }
}
