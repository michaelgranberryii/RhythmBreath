//
//  BackgroundImages.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/11/21.
//

import Foundation
import UIKit

struct BackgroundImages {
    static let branch = UIImage(named: K.ImageConstants.branch)!
    static let clouds = UIImage(named: K.ImageConstants.clouds)!
    static let lake = UIImage(named: K.ImageConstants.lake)!
    static let ocean = UIImage(named: K.ImageConstants.ocean)!
    static let pads = UIImage(named: K.ImageConstants.pads)!
    static let rocks = UIImage(named: K.ImageConstants.rocks)!
    static let sand = UIImage(named: K.ImageConstants.sand)!
    static let tree = UIImage(named: K.ImageConstants.tree)!
    
    static func fetchData() -> [Image] {
        let image1 = Image(image: BackgroundImages.branch)
        let image2 = Image(image: BackgroundImages.clouds)
        let image3 = Image(image: BackgroundImages.lake)
        let image4 = Image(image: BackgroundImages.ocean)
        let image5 = Image(image: BackgroundImages.pads)
        let image6 = Image(image: BackgroundImages.rocks)
        let image7 = Image(image: BackgroundImages.sand)
        let image8 = Image(image: BackgroundImages.tree)
        return [image1, image2, image3, image4, image5, image6, image7, image8]
    }
}
