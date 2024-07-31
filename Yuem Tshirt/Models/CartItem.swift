//
//  CartItem.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 28.06.2024.
//

import Foundation

class CartItem {
    var product: Product
    var count: Int = 0
    
    init(product: Product, count: Int) {
        self.product = product
        self.count = count
    }
    
}
