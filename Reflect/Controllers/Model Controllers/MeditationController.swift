//
//  MeditationController.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit
import Firebase

struct MeditationController {
    
    
        // MARK: - Properties
    
    var meditations   = [Meditation]()
    let categoriesRef = FIRESTORE.collection(MEDITATIONS).whereField(CATEGORIES, isEqualTo: true)
    static let shared = MeditationController()
    
    
        // MARK: - Methods
    
    func getCategoryMeditations(completion: @escaping (Bool) -> Void) {
        categoriesRef.getDocuments { (querySnapshot, error) in
            if let error = error {
                print("❌ ERROR in \(#file), \(#function), \(error),\(error.localizedDescription) ❌")
            } else {
                for document in querySnapshot!.documents {
//                    meditations.append(document)
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
    
    func getMeditationURL(completion: @escaping (Bool) -> Void) {
        
    }
    
    func streamMeditationAudio(completion: @escaping (Bool) -> Void) {
        
    }
    
}
