//
//  CloseToYouCollectionViewCell.swift
//  ChallengeParis
//
//  Created by thaxz on 07/09/22.
//

import UIKit

class CloseToYouCollectionViewCell: UICollectionViewCell {
    
    // Storing cell identifier
    
    static let cellIdentifier = "cellClose"
    
    // Outlets from storyboard
    
    @IBOutlet var ivClose: UIImageView!
    @IBOutlet var lbName: UILabel!
    @IBOutlet var lbDistance: UILabel!
    @IBOutlet var lbRating: UILabel!
    
    
    // Setting up cell
    
    func setup(name: String, rating: String, distance: String, image: UIImage) {
        
        ivClose.image = image
        lbRating.text = rating
        lbName.text = name
        lbDistance.text = distance
        self.ivClose.layer.cornerRadius = 8
        
    }
    
}
