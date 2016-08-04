//
//  Taco.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/3/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import Foundation


enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtien: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell
    private var _protienId: TacoProtien
    private var _condimentId: TacoCondiment
    
    var id: Int{
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var protienId: TacoProtien {
        return _protienId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    init(id: Int, productName: String, shellId: Int, protienId: Int, condimentId: Int) {
        _id = id
        _productName = productName
        
        switch shellId {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId = TacoShell.Flour
        }
        
        switch protienId {
        case 2:
            self._protienId = TacoProtien.Brisket
        case 3:
            self._protienId = TacoProtien.Fish
        case 4:
            self._protienId = TacoProtien.Chicken
        default:
            self._protienId = TacoProtien.Beef
        }
        
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded
        }
    }
}

