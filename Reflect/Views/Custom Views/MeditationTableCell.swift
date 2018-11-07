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
    
    // maybe remove when pull meditations
    var myImage: UIImage?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

   
        //MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5 // MeditationController.shared.meditations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meditationCollectionCell", for: indexPath) as? MeditationCollectionCell else { return UICollectionViewCell() }
        
//        let collectionImage = MeditationCategory.categories[indexPath.row].icon
        
        // maybe remove when pull meditations
        cell.meditationImage.image = myImage
        
        return cell
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
