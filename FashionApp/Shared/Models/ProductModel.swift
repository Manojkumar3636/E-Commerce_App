//
//  ProductModel.swift
//  FashionApp
//
//  Created by sham kumar s on 23/02/26.
//

import Foundation
import SwiftUI

struct ProductModel: Identifiable, Hashable {
    let id: Int
    let title: String
    let description: String
    let size: String
    let color: Color
    let image: String
    let category: String
    let price: Int    
}

extension ProductModel {
    static let sampleProduct: Self = ProductModel(id: 1, title: "T-Shirt", description: "A great t-shirt description should provide your audience with all of the information they need about the product you're selling. ", size: "M", color: .black, image: "tshirt", category: "Casual", price: 500)
}
