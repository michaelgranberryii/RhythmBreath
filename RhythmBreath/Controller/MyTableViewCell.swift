//
//  MyTableViewCell.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/9/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    let textColor : UIColor = UIColor.white
    let cornerRad : CGFloat = 15
    
    var titleLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var shortBreathingDecriptionLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let moreInfoButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myViewSetup()
//        myImagesSetup()
        titleLabelSetup()
        shortDescriptionLabelSetup()
//        moreInfoButtonSetup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
    
    func set(image: Image) {
        myImage.image = image.image
        myImage.contentMode = .scaleAspectFill
    }
}

//MARK: - View Setup

extension MyTableViewCell {
    fileprivate func myImagesSetup() {
        myImage.alpha = 0.2
        myImage.layer.cornerRadius = cornerRad
    }
    
    fileprivate func myViewSetup() {
        // Conor Radius
        myView.layer.cornerRadius = cornerRad
        // Background Color
        myView.backgroundColor = UIColor.white
        // Drop Shadow
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 0.5
        myView.layer.shadowOffset = .zero
        myView.layer.shadowRadius = 3
        // Opacity
        myView.alpha = 1
    }
    
    fileprivate func titleLabelSetup() {
        titleLabel.textColor = textColor
        titleLabel.font = UIFont(name: "Avenir Heavy", size: 60)
        contentView.addSubview(titleLabel)
        addTitleLabelConstraints()
    }
    
    fileprivate func shortDescriptionLabelSetup() {
        shortBreathingDecriptionLabel.textColor = textColor
        shortBreathingDecriptionLabel.font = UIFont(name: "Avenir Medium", size: 15)
        shortBreathingDecriptionLabel.numberOfLines = 0
        contentView.addSubview(shortBreathingDecriptionLabel)
        addshortDescriptionLabelConstraints()
    }
    
    fileprivate func moreInfoButtonSetup() {
//        moreInfoButton.backgroundColor = UIColor.white
        moreInfoButton.setBackgroundImage(UIImage(systemName: "info.circle"), for: .normal)
        moreInfoButton.imageView?.frame = CGRect(x: 0, y: 0, width: moreInfoButton.frame.size.width-10, height: moreInfoButton.frame.size.height-10)
        moreInfoButton.tintColor = .link
        moreInfoButton.imageView?.clipsToBounds = true
        contentView.addSubview(moreInfoButton)
        addMoreInfoButtonContraints()
    }
}



