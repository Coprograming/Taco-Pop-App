//
//  TacoCell.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/3/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLodableView, Shakeable {

    @IBOutlet weak var tacoImg: UIImageView!
    @IBOutlet weak var tacoLbl: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco:Taco){
        self.taco = taco
        tacoImg.image = UIImage(named: taco.protienId.rawValue)
        tacoLbl.text = taco.productName
    }
}
