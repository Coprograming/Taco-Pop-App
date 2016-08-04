//
//  XibLoadableView.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/4/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

protocol NibLodableView: class {}

extension NibLodableView where Self: UIView {
    static var nibName: String {
        return String(self)
    }
}
