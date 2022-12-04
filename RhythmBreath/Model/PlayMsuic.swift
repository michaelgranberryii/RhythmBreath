//
//  PlaySound.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/10/21.
//


import Foundation
import AVFoundation

class PlayMsuic {
    var audioPlayer: AVAudioPlayer?
    
    func prepareAudio(forResource: String, ofType: String) {
        let url = Bundle.main.url(forResource: forResource, withExtension: ofType)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            if let safeAudioPlayer = audioPlayer {
                audioRate()
                safeAudioPlayer.prepareToPlay()
            }
            audioPlayer?.currentTime = 0
        } catch {
            print("Error preparing music: \(error)")
        }
    }
    
    func setCurrentTime(currentTime: TimeInterval) {
        if let safeAudioPlayer = audioPlayer {
            safeAudioPlayer.currentTime = currentTime
        }
    }
    
    func getCurrentTime() -> TimeInterval {
        if let safeAudioPlayer = audioPlayer {
            return safeAudioPlayer.currentTime
        }
        return 0
    }
    
    
    
    func playAudio() {
        if let safeAudioPlayer = audioPlayer {
            stopAudio()
            safeAudioPlayer.play()
        }
    }
    
    func stopAudio() {
        if let safeAudioPlayer = audioPlayer {
            safeAudioPlayer.currentTime = 0
            safeAudioPlayer.stop()
        }
    }
    
    func pauseAudio() {
        if let safeAudioPlayer = audioPlayer {
            safeAudioPlayer.pause()
        }
    }
    
    func audioRate() {
        if let safeAudioPlayer = audioPlayer {
            safeAudioPlayer.enableRate = true
            safeAudioPlayer.rate = 1
        }
    }
    
}
