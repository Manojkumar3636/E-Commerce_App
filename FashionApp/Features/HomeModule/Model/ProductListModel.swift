//
//  ProductListModel.swift
//  FashionApp
//
//  Created by sham kumar s on 23/02/26.
//

import Foundation

struct ProductListModel: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let products: [ProductModel]
}

