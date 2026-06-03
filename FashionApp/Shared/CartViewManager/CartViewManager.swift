//
//  CartViewManager.swift
//  FashionApp
//
//  Created by sham kumar s on 24/02/26.
//

import Foundation


class CartViewManager: ObservableObject {
    
    static let shared = CartViewManager()
    
    @Published private var cartArray: [ProductModel] = []
    
    private init() {
        
    }
    
    func getCartItems() -> [ProductModel] {
        return cartArray
    }
    
    func addToCart(product: ProductModel) {
        
        guard cartArray.contains(where: {$0.id == product.id}) == false else {
            return
        }
        cartArray.append(product)
    }
    
    func updateCartItem(product: ProductModel) {
        
    }
    
    func removeItem(product: ProductModel) {
        
        cartArray.removeAll(where: {$0.id == product.id})
    }
    
    func isAddedToCart(product: ProductModel) -> Bool {
        return cartArray.contains(where: {$0.id == product.id})
    }
    
    
    func totalPrice() -> Int {
        var totalPrice: Int = 0
        for product in cartArray {
            totalPrice += product.price
        }
        return totalPrice
    }
    
}
