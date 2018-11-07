//
//  UserController.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import Foundation
import Firebase

class UserController {
    
    static let shared = UserController()
    
    var user: User?
    
    static func signUpUser(with email: String, password: String, and name: String, completion: @escaping (Bool) -> Void) {
        AUTH.createUser(withEmail: email, password: password) { (successResult, error) in
            if let error = error {
                print("❌ Error in file \(#file), function \(#function), \(error),\(error.localizedDescription)❌")
                #warning("Show User Error")
            }
            
            let name = name
            
            if successResult != nil {
                
                FIRESTORE.collection(USER).addDocument(data: [
                    
                    NAME : name,
                    EMAIL : email,
                    DAY_STREAK : 0,
                    TIME_TOTAL : 0,
                    PROFILE_IMAGE_URL : "No Profile Image"
                    
                    ], completion: { (error) in
                        if let error = error {
                            completion(false)
                            print("❌ Error in file \(#file), function \(#function), \(error),\(error.localizedDescription)❌")
                        } else {
                            completion(true)
                        }
                })
            }
        }
    }
    
    
    static func signInUser(with email: String, and password: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    static func signOutUser(completion: @escaping (Bool) -> Void) {
        
    }
    
    static func deleteUser(with email: String, and password: String, completion: @escaping (Bool) -> Void) {
    
    }
    
    static func updateEmail(with email: String, and password: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    static func updateName(with name: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    static func changePassword(with email: String, and password: String, completion: @escaping (Bool) -> Void) {
        
    }
    
    static func updateStats(for user: User, completion: @escaping (Bool) -> Void) {
        
    }
    
}
