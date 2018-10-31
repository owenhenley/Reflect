//
//  FirebaseStorageHelper.swift
//  Reflect
//
//  Created by Owen Henley on 10/30/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit
import AVKit
import Firebase

    // MARK: - References
// Body Scan 1
let bodyScanRef = STORAGE.reference(withPath: "/Body Scan/BreathworksBodyScan.mp3")

let gsReference = STORAGE.reference(forURL: "gs://reflect-ceb42.appspot.com/Body Scan/BreathworksBodyScan.mp3")

let httpsReference = STORAGE.reference(forURL: "https://firebasestorage.googleapis.com/v0/b/reflect-ceb42.appspot.com/o/Body%20Scan%2FBreathworksBodyScan.mp3?alt=media&token=c3e5b42e-a318-4178-8aac-3edf8efe8e00")
