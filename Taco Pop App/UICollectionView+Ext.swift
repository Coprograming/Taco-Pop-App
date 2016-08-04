//
//  UICollectionView+Ext.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/4/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell where T: ReusableView, T: NibLodableView>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T:UICollectionViewCell where T: ReusableView>(forIndexpath indexPath: NSIndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T
            else {
                fatalError("Could not deque cell with identifier \(T.reuseIdentifier)")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView {}
