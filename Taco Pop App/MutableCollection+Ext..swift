//
//  MutableCollection+Ext..swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/4/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffel() {
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
