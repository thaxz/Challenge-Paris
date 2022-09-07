//
//  SalvosViewController.swift
//  ChallengeParis
//
//  Created by thaxz on 07/09/22.
//

import UIKit

class SalvosViewController: UIViewController {

    @IBOutlet var savedTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        savedTableView.delegate = self
        savedTableView.dataSource = self
        
    }
    
}

extension SalvosViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = savedTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SavedTableViewCell
        
        return cell
        
    }
    
    
    
    
    
}
