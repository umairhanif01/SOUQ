//
//  ChooseCountryView.swift
//  SOUQ
//
//  Created by Umair Hanif on 06/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class ChooseCountryView: UIView {

    @IBOutlet var englishLangBtn: CustomButton!
    @IBOutlet var arabicLangBtn: CustomButton!
    @IBOutlet var countryCollectionView: UICollectionView!
    
    var selectedLanguage = ""
    var selectedCountry = ""
    
    var countryNames = ["Algeria", "Bahrain",  "Egypt",  "Emirates",  "Iraq",  "Jordan",  "Kuwait",  "Libya",  "Lebanon",  "Morocco",  "Mauritania",  "Oman",  "Palestine",  "Qatar",  "Saudi Arabia",  "Syria",  "Sudan",  "Tunisia",  "Turkey",  "Yemen"]
    var countryImages = ["Algeria", "Bahrain",  "Egypt",  "Emirates",  "Iraq",  "Jordan",  "Kuwait",  "Libya",  " Lebanon",  "Morocco",  "Mauritania",  "Oman",  "Palestine",  "Qatar",  "Saudi Arabia",  "Syria",  "Sudan",  "Tunisia",  "Turkey",  "Yemen"]
    
    override func awakeFromNib() {
        
        selectedLanguage = "english"
        
        let nib = UINib(nibName: "CountryCollectionViewCell", bundle: nil)
        if let collectionView = countryCollectionView {
            
            collectionView.register(nib, forCellWithReuseIdentifier: "CountryCollectionViewCell")
            collectionView.backgroundColor = UIColor.clear.withAlphaComponent(0)
            
            collectionView.delegate = self
            collectionView.dataSource = self
            
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //load nib
        if let nib = Bundle.main.loadNibNamed("ChooseCountryView", owner: self),
            let nibView = nib.first as? UIView {
            nibView.frame = frame
            nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nibView)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func englishLangBtnListener(_ sender: UIButton) {
        sender.backgroundColor = Helper.colorTarawera
        sender.setTitleColor(UIColor.white, for: .normal)
        arabicLangBtn.backgroundColor = UIColor.white
        arabicLangBtn.setTitleColor(UIColor.black, for: .normal)
        
        selectedLanguage = "english"
        
        
    }
    
    @IBAction func arabicLangBtnListener(_ sender: UIButton) {
        sender.backgroundColor = Helper.colorTarawera
        sender.setTitleColor(UIColor.white, for: .normal)
        englishLangBtn.backgroundColor = UIColor.white
        englishLangBtn.setTitleColor(UIColor.black, for: .normal)
        
        selectedLanguage = "arabic"
        
    }
    
}


extension ChooseCountryView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countryNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCollectionViewCell", for: indexPath) as? CountryCollectionViewCell {
            
            cell.countryImageView.image = UIImage(named: countryImages[indexPath.row])
            cell.countryLbl.text = countryNames[indexPath.row]
            
            if indexPath.row == 0 {
                cell.isSelected = true
                cell.containerView.backgroundColor = Helper.colorLightBlue
                self.selectedCountry = cell.countryLbl.text!
            }
            
            return cell
            
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CountryCollectionViewCell {
            cell.containerView.backgroundColor = Helper.colorLightBlue
            self.selectedCountry = cell.countryLbl.text!
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CountryCollectionViewCell {
            cell.containerView.backgroundColor = UIColor.white
        }
    }
    
    
}

extension ChooseCountryView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (countryCollectionView.frame.width / 2), height: 61)
    }
    
}

