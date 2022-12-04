//
//  MoreInfoViewController.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/19/21.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    var titleLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var circleView : UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    var descriptionLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = AppColors.infoBG
        circleViewSetup()
        titleLabelViewSetup()
        descriptionLabelViewSetup()
    }

}

//MARK: - View setup

extension MoreInfoViewController {
    // Title Label
    fileprivate func titleLabelViewSetup() {
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont(name: "Avenir Medium", size: 40)
        titleLabel.textAlignment = .center
        view.addSubview(titleLabel)
        addTitleLabelViewConstraints()
    }
    
    // Circle View
    fileprivate func circleViewSetup() {
        circleView.layer.cornerRadius = (view.frame.size.width / 2)/2
        view.addSubview(circleView)
        addCircleViewConstraints()
    }
    
    // Description Label
    fileprivate func descriptionLabelViewSetup() {
        descriptionLabel.textColor = UIColor.black
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = UIFont(name: "Avenir Book", size: 20)
        descriptionLabel.textAlignment = .left
        view.addSubview(descriptionLabel)
        addDescriptionLabelViewConstraints()
    }
    
}


