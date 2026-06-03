//
//  SearchViewModel.swift
//  FashionApp
//
//  Created by sham kumar s on 23/02/26.
//

import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
    
    
    @Published var searchListArray: [ProductModel] = []
    
    func fetchProduct() {
        
        searchListArray = [ProductModel(id: 1, title: "T-Shirt", description: "A great t-shirt description should provide your audience with all of the information they need about the product you're selling. ", size: "M", color: .white, image: "tshirt", category: "Casual", price: 500),
                           ProductModel(id: 2, title: "Watch", description: "highlight the blend of style, functionality, and durability, often featuring a striking dial, durable strap (leather/stainless steel), and water resistance to appeal to both casual and formal wearers.", size: "M", color: .black,image: "watch2", category: "Accessories", price: 200),
                           ProductModel(id: 3, title: "Cargo", description: "Elevate your everyday style with these modern cargo pants, blending rugged utility with a sleek, tapered silhouette.", size: "L", color: .green,image: "cargo", category: "Casual", price: 900),
                           ProductModel(id: 4, title: "funky Shoe", description: "combine descriptive, emotional, and benefit-driven language to help customers visualize the product and boost conversions", size: "10", color: .red,image: "funkyshoe", category: "Foot Wear", price: 1500),
                           ProductModel(id: 5, title: "Appple Watch", description: "the ultimate wearable for health, fitness, and connectivity, featuring a bright Always-On Retina display, advanced health sensors (ECG, heart rate, blood oxygen), and seamless iPhone integration", size: "M", color: .orange,image: "applewatch", category: "Accessories", price: 500),
                           ProductModel(id: 6, title: "Shoes", description: "A watch is a timepiece carried or worn by a person", size: "M", color: .white,image: "watch3", category: "T-Shirt", price: 200),
                           ProductModel(id: 7, title: "Casual Shirt", description: "A versatile, 100% cotton casual shirt designed for everyday comfort and style, featuring a modern slim fit, button-down closure, and breathable fabric suitable for all-day wear", size: "XL", color: .gray,image: "chekedshirt", category: "Casual", price: 1000),
                           ProductModel(id: 8, title: "White Shoe", description: "blending premium comfort with timeless style", size: "M", color: .white,image: "shoe1", category: "Foot Wear", price: 1500),
                           ProductModel(id: 9, title: "Digital Watch", description: "Instant, easy-to-read numerical time.", size: "M", color: .brown,image: "watch2", category: "Formal", price: 900),
                           ProductModel(id: 10, title: "Formal Pant", description: "highlight material, fit, and styling, focusing on benefits like comfort and durability to boost sales", size: "30", color: .blue,image: "pant", category: "T-Shirt", price: 1200),
                           ProductModel(id: 11, title: "Belt", description: "blend detailed technical specifications with persuasive, benefit-driven language to reduce returns and drive sales", size: "30", color: .brown,image: "shoe", category: "belt", price: 1200),]
                
    }
    
}

