//
//  HomeCollectionViewCell.swift
//  Reset
//
//  Created by Prasanjit Panda on 12/11/24.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    func configure(with text: String) {
        image.image = UIImage(named: text)
    }
}
