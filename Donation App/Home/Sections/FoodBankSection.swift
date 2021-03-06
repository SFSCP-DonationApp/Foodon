//
//  FoodBankSection.swift
//  Donation App
//
//  Created by Merissa Bridgeman on 8/6/21.
//

import Foundation
import UIKit

struct FoodBankSection: Section {

    
    //Define properties
    let numberOfItems: Int
    let items: [FoodBanks]!
    
    //Define methods
    init(items: [FoodBanks]) {
        self.numberOfItems = items.count
        self.items = items
    }
    
    func layoutSection() -> NSCollectionLayoutSection? {
        //item size
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top:0, leading: 5, bottom: 0, trailing: 5)
        
        //group size
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(200), heightDimension: .absolute(300))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //section size
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FoodBankCell.self), for: indexPath) as! FoodBankCell
        cell.setContents(foodBank: items[indexPath.item])
            
            return cell
        }
}
