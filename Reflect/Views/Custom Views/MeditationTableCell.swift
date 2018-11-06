//
//  MeditationTableCell.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class MeditationTableCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate  {
    
        // MARK: - Outlets
    
    @IBOutlet weak var collectionName: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

   
    //MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meditationCollectionCell", for: indexPath) as? MeditationCollectionCell
        
        return cell ?? UICollectionViewCell()
    }
    
}
