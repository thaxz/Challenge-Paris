//
//  SavedTableViewCell.swift
//  ChallengeParis
//
//  Created by thaxz on 07/09/22.
//

import UIKit

class SavedTableViewCell: UITableViewCell {

    // Storing cell identifier
    
    static let cellIdentifier = "cell"
    
    // Outlets from storyboard
    
    @IBOutlet var ivSavedPlace: UIImageView!
    @IBOutlet var lbName: UILabel!
    @IBOutlet var lbPriceInfo: UILabel!
    @IBOutlet var lbDistance: UILabel!
    
    // Setting up cell
    
    func setup(name: String, priceInfo: String, distance: String, image: UIImage) {
        
        ivSavedPlace.image = image
        lbPriceInfo.text = priceInfo
        lbName.text = name
        lbDistance.text = distance
        self.ivSavedPlace.layer.cornerRadius = 8
        
    }
    
}
