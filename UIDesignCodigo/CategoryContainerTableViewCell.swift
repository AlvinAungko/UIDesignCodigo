//
//  CategoryContainerTableViewCell.swift
//  UIDesignCodigo
//
//  Created by Aung Ko Ko on 23/07/2023.
//

import UIKit

class CategoryContainerTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCollectionView() {
        
    }
    
}
