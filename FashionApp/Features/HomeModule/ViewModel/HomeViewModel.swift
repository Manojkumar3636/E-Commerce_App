//
//  HomeViewModel.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import Foundation


class  HomeViewModel: ObservableObject {
    
    
    @Published var productsArray: [ProductListModel] = []
    
    @Published var headerItems: [ProductModel]  = []
    
//
//    let items: [ProductModel] = [HeaderModel(title: "Shirt", image: "shirt"),
//                                 HeaderModel(title: "Pants", image: "pant"),
//                                 HeaderModel(title: "Shoes", image: "shoe"),
//                                 HeaderModel(title: "Watches", image: "watch")]
    
    
    func fetchProducts() { 
        
        guard productsArray.isEmpty else { return }
        
        headerItems =  [ProductModel(id: 1, title: "Shirt", description: "", size: "L", color: .black, image: "shirt", category: "Formal", price: 500),
                        ProductModel(id: 2, title: "Pant", description: "", size: "30", color: .orange, image: "pant", category: "Formal", price: 300),
                        ProductModel(id: 3, title: "Shoes", description: "", size: "10", color: .blue, image: "shoe", category: "Shoes", price: 590),
                        ProductModel(id: 4, title: "Watches", description: "", size: "7", color: .brown, image: "watch", category: "SmartWatch", price: 800)]
                
        
        let popularProducts: [ProductModel] = [ProductModel(id: 5, title: "Shirt", description: "", size: "M", color: .black, image: "formalshirt", category: "Formal", price: 500),
                                               ProductModel(id: 6, title: "Pant", description: "", size: "M", color: .black,image: "tshirt", category: "T-Shirt", price: 200),
                                               ProductModel(id: 7, title: "Shoes", description: "", size: "M", color: .black,image: "shoe1", category: "Formal", price: 900),
                                               ProductModel(id: 8, title: "Watches", description: "", size: "M", color: .black,image: "applewatch", category: "Casual", price: 1500)]
        
        let mostBuy: [ProductModel] = [ProductModel(id: 9, title: "Shoes", description: "", size: "M", color: .black,image: "shoe3", category: "Shoe", price: 500),
                                       ProductModel(id: 10, title: "Watches", description: "", size: "M", color: .black,image: "watch3", category: "Watch", price: 200),
                                       ProductModel(id: 11, title: "Pant", description: "", size: "M", color: .black,image: "formalpant", category: "Pant", price: 900),
                                       ProductModel(id: 12, title: "Pants", description: "", size: "M", color: .black,image: "cargo", category: "CargoPant", price: 500)]
        
        
        let favorite: [ProductModel] = [ProductModel(id: 13, title: "Shirt", description: "", size: "M", color: .black,image: "shirt", category: "Formal", price: 500),
                                        ProductModel(id: 14, title: "Pant", description: "", size: "M", color: .black,image: "funkyshoe", category: "Shoes", price: 200),
                                        ProductModel(id: 15, title: "Watche", description: "", size: "M", color: .black,image: "watch2", category: "Watch", price: 900),
                                        ProductModel(id: 16, title: "Shirts", description: "", size: "M", color: .black,image: "chekedshirt", category: "CasualWear", price: 2000)]
        
        
        let item = ProductListModel(title: "Most Popular", products: popularProducts)
        let item2 = ProductListModel(title: "Most Buy", products: mostBuy)
        let item3 = ProductListModel(title: "Favorite", products: favorite)
        
        self.productsArray.append(contentsOf: [item, item2, item3])
    }
}
