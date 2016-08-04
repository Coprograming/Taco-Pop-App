//
//  DropShadow.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/3/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black().cgColor
        layer.shadowOpacity = 7.0
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
