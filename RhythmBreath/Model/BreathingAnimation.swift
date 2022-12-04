//
//  BreathingAnimation.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/20/21.
//

import UIKit

//MARK: - Animation Functions

extension BreathingController {

    // Inhale
    func inhaleAnimation() {
        inhaleMusic.setCurrentTime(currentTime: 0)
        inhaleMusic.playAudio()
        UIView.animate(withDuration: TimeInterval(breathingRhythm.inhaleCount)) {
            self.expandingCircleView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            self.expandingCircleView.center = self.view.center
            self.breathingLabel.text = "inhale"
        } completion: { done in
            if done {
                if self.breathingRhythm.inhaleHoldCount > 0 {
                self.inhaleHoldAnimation()
                }
                else {
                    self.exhaleAnimation()
                }
            }
        }
    }
    
    // Inhale Hold
    func inhaleHoldAnimation() {
        UIView.animate(withDuration: TimeInterval(breathingRhythm.inhaleHoldCount)) {
                self.expandingCircleView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
                self.expandingCircleView.center = self.view.center
                self.breathingLabel.text = "hold"
            } completion: { done in
                if done {
                    self.exhaleAnimation()
                }
            }
    }
    
    // Exhale
    fileprivate func exhaleAnimation() {
        UIView.animate(withDuration: TimeInterval(breathingRhythm.exhaleCount)) {
            self.expandingCircleView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.expandingCircleView.center = self.view.center
            self.breathingLabel.text = "exhale"
        } completion: { done in
            if done {
                if self.breathingRhythm.exhaleHoldCount > 0 {
                self.exhaleHoldAnimation()
                }
                else {
                    self.inhaleAnimation()
                }
            }
        }
    }
    
    // Exhale Hold
    func exhaleHoldAnimation() {
        UIView.animate(withDuration: TimeInterval(breathingRhythm.exhaleHoldCount)) {
                self.expandingCircleView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
                self.expandingCircleView.center = self.view.center
                self.breathingLabel.text = "hold"
            } completion: { done in
                if done {
                    self.inhaleAnimation()
                }
            }
    }
}
