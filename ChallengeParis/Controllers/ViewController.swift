//
//  ViewController.swift
//  ChallengeParis
//
//  Created by thaxz on 07/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var bestEvaluatedCollectionView: UICollectionView!
    @IBOutlet var closeToYouCollectionView: UICollectionView!
    @IBOutlet var familyPlacesCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bestEvaluatedCollectionView.delegate = self
        bestEvaluatedCollectionView.dataSource = self
        
        closeToYouCollectionView.dataSource = self
        closeToYouCollectionView.delegate = self
        
        familyPlacesCollectionView.delegate = self
        familyPlacesCollectionView.dataSource = self
        
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == bestEvaluatedCollectionView {
            
            let cell = bestEvaluatedCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BestEvaluatedCollectionViewCell
            
            print("bestCell")
            
            return cell
            
        } else if collectionView == closeToYouCollectionView {
            
            let cell = closeToYouCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CloseToYouCollectionViewCell
            
            print("closeCell")
            
            
            return cell
            
        } else if collectionView == familyPlacesCollectionView {
            
            let cell = familyPlacesCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FamilyCollectionViewCell
            
            cell.setup(name: "picole", rating: "0.0", distance: "6.6", image: UIImage())
            
            print("familyCell")
            
            return cell
            
        }
        print("vaitefude")
        return FamilyCollectionViewCell()
    }
    
    
}




