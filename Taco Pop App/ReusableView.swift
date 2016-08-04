//
//  ReusableView.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/4/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {

    static var reuseIdentifier: String {
        return String(self)
    }
    
    }

