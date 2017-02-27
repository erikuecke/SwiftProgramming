//
//  Accountant.swift
//  SwiftProgramming24
//
//  Created by Erik Uecke on 2/27/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Foundation

// Reference Cycles in Closures
class Accountant {
    typealias NetWorthChanged = (Double) -> Void
    
    var netWorthChangedHandler: NetWorthChanged? = nil
    var netWorth: Double = 0.0 {
        didSet {
            netWorthChangedHandler?(netWorth)
        }
    }
    
    func gained(_ asset: Asset, completion: () -> Void) {
        netWorth += asset.value
        completion()
    }
}
