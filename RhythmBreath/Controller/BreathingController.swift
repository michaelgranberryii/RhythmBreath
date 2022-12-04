//
//  MyViewController.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/9/21.
//

import UIKit

class BreathingController: UIViewController {
    
    let expandingCircleView = UIView()
    var myButton = UIButton()
    var circleColor = UIColor()
    var breathingRhythm = BreathingRhythm()
    let inhaleMusic = PlayMsuic()
    var breathingRhythmText = ""
    var isAnimating = true
    @IBOutlet weak var breathingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isIdleTimerDisabled = true // View Sleeper Off
        navigationController?.navigationBar.prefersLargeTitles = false   // Large title
        navigationItem.title = breathingRhythmText  // Navbar Title
        viewSetup()
        buttonSetup()
        breathingLabel.text = "Chill Bro!"
        inhaleMusic.prepareAudio(forResource: "46", ofType: K.AudioConstants.mp3)
    }
    
    //MARK: - View Setup
    
    // Circle View Setup
    fileprivate func viewSetup() {
        expandingCircleView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        expandingCircleView.backgroundColor = circleColor
        expandingCircleView.center = view.center
        expandingCircleView.layer.cornerRadius = 100
        view.addSubview(expandingCircleView)
    }
    
    
    // Start Button Setup
    fileprivate func buttonSetup() {
        myButton = UIButton(frame: CGRect(x: (view.frame.size.width - 200) / 2, y: (view.frame.size.height - 125), width: 200, height: 70))
        myButton.backgroundColor = .black
        myButton.layer.cornerRadius = 20
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        myButton.setTitle("Start", for: .normal)
        view.addSubview(myButton)
    }
    
    
    //MARK: - Actions
    
    // Start Button Action
    @objc func buttonClicked() {
        if isAnimating {
            self.expandingCircleView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.expandingCircleView.center = self.view.center
            self.expandingCircleView.layer.removeAllAnimations()
            inhaleAnimation()
            myButton.setTitle("Reset", for: .normal)
            isAnimating = !isAnimating
        }
        else {
            self.expandingCircleView.layer.removeAllAnimations()
            self.expandingCircleView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            self.expandingCircleView.center = self.view.center
            self.breathingLabel.text = "You stopped the chill!"
            inhaleMusic.stopAudio()
            inhaleMusic.setCurrentTime(currentTime: 0)
            myButton.setTitle("Start", for: .normal)
            isAnimating = !isAnimating
        }
        
    }
}

