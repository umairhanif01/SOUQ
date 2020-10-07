//
//  CountryCollectionViewCell.swift
//  SOUQ
//
//  Created by Umair Hanif on 06/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class CountryCollectionViewCell: UICollectionViewCell {

    @IBOutlet var containerView: CustomView!
    @IBOutlet var countryImageView: UIImageView!
    @IBOutlet var countryLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
