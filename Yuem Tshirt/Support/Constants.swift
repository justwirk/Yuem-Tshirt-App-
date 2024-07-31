//
//  Constants.swift
//  Yuem Tshirt
//
//  Created by Emre Yılmaz on 23.06.2024.
//

import SwiftUI

var product1: Product = .init(title: "Regular fit, Ribbed crew neck finish, Les Benjamins Black Tshirt ", price: 130, description: "Black regular top Colourblocked U-neck, long", images: ["P01_01", "P01_02", "P01_03", "P01_04"], category: .Tshirt, gender: .Unisex)

var product2: Product = .init(title: "Casual Regular Fit Les Benjamins White Tshirt", price: 150, description: "White regular top Colourblocked U-neck, long", images: ["T02_01", "T02_02", "T02_03", "T02_04"], category: .Tshirt, gender: .Unisex)

var product3: Product = .init(title: "Regular fit, Ribbed crew neck finish, Les Benjamins Red Tshirt ", price: 150, description: "Red regular top Colourblocked U-neck, long", images: ["T03_01", "T03_02", "T03_03", "T03_04"], category: .Tshirt, gender: .Unisex)

var product4: Product = .init(title:"Casual Regular Fit Les Benjamins Blue Tshirt" , price: 200, description: "Blue regular top Colourblocked U-neck, long", images: ["T04_01", "T04_02", "T04_03", "T04_04"], category: .Tshirt, gender: .Male)

var product5: Product = .init(title: "Casual Regular Sleeves Solid Women White Top", price: 255, description: "Stylistico Pure Rayon Cotton Smooth and Premium Finish Round Pleated Neck and Sleeve (Half) 14 Inch, Transparent Lace at Shoulder in Front Side 24 Inches Long in Height Closer with Button at back side Available in 4 Beautiful Color and 4 Size Variant To Pair With Jeans, Trouser Pant, Shorty, Capri & Leggings For 15-35 Years Women.", images: ["P05_01", "P05_02", "P05_03", "P05_04"], category: .Tshirt, gender: .Female)

var product6: Product = .init(title: "Casual Regular Sleeves Solid Women Pink Top", price: 255, description: "Stylistico Pure Rayon Cotton Smooth and Premium Finish Round Pleated Neck and Sleeve (Half) 14 Inch, Transparent Lace at Shoulder in Front Side 24 Inches Long in Height Closer with Button at back side Available in 4 Beautiful Color and 4 Size Variant To Pair With Jeans, Trouser Pant, Shorty, Capri & Leggings For 15-35 Years Women.", images: ["P06_01", "P06_02", "P06_03", "P06_04"], category: .Tshirt, gender: .Female)

func tenorSans(size: CGFloat) -> Font {
    Font.custom("Tenor Sans", size: size)
}

let hashtags = ["#2024", "#summer", "#collection", "#fall", "#tshirt", "#summercollection", "#yuemfashion"]

var cartItems: [CartItem] = [.init(product: product1, count: 1), .init(product: product2, count: 2), .init(product: product3, count: 1)]

var products: [Product] = [product1, product2, product3, product4, product5, product6]
