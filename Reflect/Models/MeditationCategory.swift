//
//  MeditationCategory.swift
//  Reflect
//
//  Created by Owen Henley on 11/1/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

struct MeditationCategory {
    
    var name: String
    var icon: UIImage!
    
    static let categories = [
        MeditationCategory(name: "Body Scan", icon: UIImage(named: "meditation4")),
        MeditationCategory(name: "Brief Mindfulness Practices", icon: UIImage(named: "spirograph3")),
        MeditationCategory(name: "Mindful Movement", icon: UIImage(named: "spirograph2")),
        MeditationCategory(name: "Mindfulness of Breath", icon: UIImage(named: "spirograph3")),
        MeditationCategory(name: "Mountain Meditation", icon: UIImage(named: "meditation2")),
        MeditationCategory(name: "Self Guided", icon: UIImage(named: "meditation1")),
        MeditationCategory(name: "Sitting Meditations", icon: UIImage(named: "spirograph4"))
    ]
}
