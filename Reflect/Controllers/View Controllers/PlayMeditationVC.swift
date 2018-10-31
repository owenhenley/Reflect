//
//  PlayMeditationVC.swift
//  Reflect
//
//  Created by Owen Henley on 10/7/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit
import AVFoundation

class PlayMeditationVC: UIViewController {
    
        // MARK: - Properties
    
    var audioPlayer: AVPlayer?
    var audioPlaying = false
    let meditationURL = "https://firebasestorage.googleapis.com/v0/b/reflect-ceb42.appspot.com/o/TASH%20SULTANA%20-%20Notion.mp3?alt=media&token=482ad3be-84ad-4967-9937-a0b7cd4bfd30"
    
    
        // MARK: - Outlets
    
    @IBOutlet weak var meditationNameLabel : UILabel!
    @IBOutlet weak var timeRemainingLabel  : UILabel!
    @IBOutlet weak var playButton          : UIButton!
    @IBOutlet weak var playbackSlider      : UISlider!
    
    
        // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
        // MARK: - Actions
    
    @IBAction func playTapped(_ sender: Any) {
        if audioPlaying == false {
            audioPlaying = true
            playMeditation()
        } else {
            audioPlaying = false
            pauseMeditation()
        }
    }
    
    
    @IBAction func sliderMoved(_ sender: Any) {
    }
    
    
    func playMeditation() {
        guard let url = URL(string: meditationURL) else { return }
        let playerItem = AVPlayerItem.init(url: url)
        do {
            //play in Background after setting capabilities
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            // play file from firebase
            audioPlayer = AVPlayer.init(playerItem: playerItem)
            audioPlayer?.play()
        } catch {
            print(error)
        }
    }
    
    func pauseMeditation() {
        
        audioPlayer?.pause()
    }
}
