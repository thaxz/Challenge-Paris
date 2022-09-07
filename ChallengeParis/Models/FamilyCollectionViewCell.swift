//
//  FamilyCollectionViewCell.swift
//  ChallengeParis
//
//  Created by thaxz on 07/09/22.
//

import UIKit

class FamilyCollectionViewCell: UICollectionViewCell {
    
    // Storing cell identifier
    
    static let cellIdentifier = "cellFamily"
    
    // Outlets
    
    @IBOutlet var ivFamily: UIImageView!
    @IBOutlet var lbName: UILabel!
    @IBOutlet var lbDistance: UILabel!
    
    @IBOutlet var lbRating: UILabel!
    
    
    // Setting up cell
    
    func setup(name: String, rating: String, distance: String, image: UIImage) {
        
        ivFamily.image = image
        lbRating.text = rating
        lbName.text = name
        lbDistance.text = distance
        self.ivFamily.layer.cornerRadius = 8
        
    }
    
}
