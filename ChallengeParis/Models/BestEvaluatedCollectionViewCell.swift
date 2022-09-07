//
//  BestEvaluatedCollectionViewCell.swift
//  ChallengeParis
//
//  Created by thaxz on 07/09/22.
//

import UIKit

class BestEvaluatedCollectionViewCell: UICollectionViewCell {
    
    // Storing cell identifier
    
    static let cellIdentifier = "cellClose"
    
    // Outlets from storyboard
    
    @IBOutlet var ivBestPlace: UIImageView!
    @IBOutlet var lbName: UILabel!
    @IBOutlet var lbRating: UILabel!
    @IBOutlet var lbPriceInfo: UILabel!
    @IBOutlet var lbDistance: UILabel!
    @IBOutlet var btSaved: UIButton!
    
    // Setting up cell
    
    func setup(name: String, priceInfo: String, rating: String, distance: String, image: UIImage) {

        ivBestPlace.image = image
        lbPriceInfo.text = priceInfo
        lbRating.text = rating
        lbName.text = name
        lbDistance.text = distance
        self.ivBestPlace.layer.cornerRadius = 8
        
    }

    
}

