//
//  ProfileViewController.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/19/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var totalBreathesLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var totalBreathesNumberLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        totalBreathesLabelSetup()
        totalBreathesNumberLabelSetup()
    }
}

//MARK: - View Setup

extension ProfileViewController {
    fileprivate func totalBreathesLabelSetup() {
        totalBreathesLabel.text = "Total Breaths Taken:"
        totalBreathesLabel.textColor = UIColor.gray
        totalBreathesLabel.font =  UIFont(name: "Avenir Light", size: 20)
        view.addSubview(totalBreathesLabel)
        addtotalBreathesLabelConstraints()
    }
    
    fileprivate func totalBreathesNumberLabelSetup() {
        totalBreathesNumberLabel.text = "2.5k"
        totalBreathesNumberLabel.textColor = UIColor.black
        totalBreathesNumberLabel.font =  UIFont(name: "Avenir Medium", size: 60)
        view.addSubview(totalBreathesNumberLabel)
        addtotalBreathesNumberLabelConstraints()
    }
}




