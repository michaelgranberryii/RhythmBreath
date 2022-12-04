//
//  Constraints.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/20/21.
//

import UIKit


//MARK: - MoreInfoViewController Constraints

extension MoreInfoViewController {
    // Title Label Constraints
    func addTitleLabelViewConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50))
        contraints.append(titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        contraints.append(titleLabel.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2))
        contraints.append(titleLabel.heightAnchor.constraint(equalToConstant: view.frame.size.width / 2))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
    
    // Circle View Constraints
    func addCircleViewConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(circleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50))
        contraints.append(circleView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        contraints.append(circleView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2))
        contraints.append(circleView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 2))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
    
    // Description Label Constraints
    func addDescriptionLabelViewConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(descriptionLabel.topAnchor.constraint(equalTo: circleView.bottomAnchor, constant: 50))
        contraints.append(descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        contraints.append(descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        contraints.append(descriptionLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
}


//MARK: - ProfileViewController Constraints

extension ProfileViewController {
    // Total Breathes Label Constraints
    func addtotalBreathesLabelConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(totalBreathesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        contraints.append(totalBreathesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        contraints.append(totalBreathesLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
    
    // Total Breathes Number Label Constraints
    func addtotalBreathesNumberLabelConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(totalBreathesNumberLabel.topAnchor.constraint(equalTo: totalBreathesLabel.bottomAnchor, constant: 10))
        contraints.append(totalBreathesNumberLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        contraints.append(totalBreathesNumberLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
}


//MARK: - MyTableViewCell Constraints

extension MyTableViewCell {
    // Title Label Constraints
    func addTitleLabelConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(titleLabel.topAnchor.constraint(equalTo: myImage.topAnchor, constant: 14))
        contraints.append(titleLabel.leadingAnchor.constraint(equalTo: myImage.leadingAnchor, constant: 20))
        contraints.append(titleLabel.trailingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 20))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
    
    // Description Label Constraints
    func addshortDescriptionLabelConstraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(shortBreathingDecriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6))
        contraints.append(shortBreathingDecriptionLabel.leadingAnchor.constraint(equalTo: myImage.leadingAnchor, constant: 20))
        contraints.append(shortBreathingDecriptionLabel.trailingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: 20))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
    
    // More Info Button Constraints
    func addMoreInfoButtonContraints() {
        var contraints = [NSLayoutConstraint]()
        // Add
        contraints.append(moreInfoButton.bottomAnchor.constraint(equalTo: myImage.bottomAnchor, constant: -20))
        contraints.append(moreInfoButton.trailingAnchor.constraint(equalTo: myImage.trailingAnchor, constant: -20))
        contraints.append(moreInfoButton.heightAnchor.constraint(equalToConstant: 40))
        contraints.append(moreInfoButton.widthAnchor.constraint(equalToConstant: 40))
        // Activate
        NSLayoutConstraint.activate(contraints)
    }
}
