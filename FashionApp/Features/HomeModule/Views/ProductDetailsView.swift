//
//  ProductDetailsView.swift
//  FashionApp
//
//  Created by sham kumar s on 23/02/26.
//

import SwiftUI

struct ProductDetailsView: View {
    
    private let product: ProductModel
    private let columns: [GridItem] = [GridItem(.flexible(), spacing: 16)]
    private let rows: [GridItem] = [GridItem(.flexible(), spacing: 16)]
    
    @State var isAddedToCart: Bool  = false
    
    
    init(product: ProductModel ) {
        self.product = product
      
    }
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack(alignment: .leading) {
                ScrollView(.vertical) {
                    VStack (alignment: .leading) {
                        Image(product.image)
                            .resizable()
                            .frame(width: proxy.size.width, height: proxy.size.width + 100)
                            .scaledToFit()
                            .clipped()
                            .cornerRadius(12)
                        Text("Category: \(product.title)")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.pink)
                        
                        Text("Size: \(product.size)")
                            .foregroundColor(.black)
                            .foregroundStyle(.secondary)
                        HStack {
                            Text("Color:")
                            Circle()
                                .frame(width: 12, height: 12)
                                .foregroundColor(product.color)
                        }
                        
                        Text("Description: \(product.description)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
                
                HStack(spacing: 24) {
                    VStack {
                        Text("₹Rs")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(.yellow)
                        Text(String(product.price))
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellow)
                    }
                    
                    Button {
                        
                        if isAddedToCart {
                            CartViewManager.shared.removeItem(product: product)
                            
                        } else {
                            CartViewManager.shared.addToCart(product: product)
                        }
                        isAddedToCart.toggle()
                                                                                        
                    } label: {
                        Text(isAddedToCart ? "Remove from cart" : "Add to cart")
                            .foregroundColor(.white)
                            .padding(.all, 12)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(isAddedToCart ? .red : .blue)
                            )
                    }
                    .buttonStyle(.plain)
                }
                .padding(.horizontal)
            }
        }
        .task {
            isAddedToCart = CartViewManager.shared.isAddedToCart(product: product)
            print("isAddedToCart: \(isAddedToCart) productID: \(product)")
        }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: .sampleProduct)
    }
}
