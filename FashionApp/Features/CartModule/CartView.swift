//
//  CartView.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import SwiftUI

let rows: [GridItem] = [GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)]

struct CartView: View {
    
    
    @ObservedObject private var viewModel = CartViewManager.shared
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                if !viewModel.getCartItems().isEmpty {
                    
                List {
                    ForEach(viewModel.getCartItems(), id: \.id) { product in
                        HStack(alignment: .top, spacing: 16) {
                            Image(product.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 120)
                                .clipped()
                                .cornerRadius(12)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("Product: \(product.title)")
                                        .font(.title3)
                                        .lineLimit(1)
                                    Spacer()
                                    Button {
                                        viewModel.removeItem(product: product)
                                    } label: {
                                        Image(systemName: "xmark.bin")
                                            .resizable()
                                            .frame(width: 16, height: 16)
                                    }
                                    .buttonStyle(.plain)
                                }
                                
                                Text("Size: \(product.size)")
                                Text("Price: \(product.price)")
                                HStack {
                                    Text("Color:")
                                    Circle()
                                        .frame(width: 12, height: 12)
                                        .foregroundColor(product.color)
                                }
                            }
                        }
                        
                    }
                }
                
               
                    VStack(spacing: 12) {
                        HStack(spacing: 24) {
                            HStack {
                                Text("Rs ₹")
                                    .font(.headline)
                                    .fontWeight(.medium)
                                    .foregroundColor(.pink)
                                
                                Text(String(""))
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.yellow)
                            }
                            Spacer()
                            Text(String(viewModel.totalPrice()))
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        
                        Button {
                        }label: {
                            Text("Buy")
                                .foregroundColor(.white)
                                .padding(.all, 12)
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                    .padding(.horizontal)
                    
                } else {
                    
                    Text("Cart Empty")
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bag")
                    }
                    .tint(.black)
                }
            }
        }
    }
}


struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}


//
//List(viewModel.recipeArray, id: \.id) { recipe in
//    RecipeItemView(recipe: recipe)
//        .swipeActions(edge: .trailing, allowsFullSwipe: true){
//            Button("Delete"){
//                viewModel.removeRecipe(recipe: recipe)
//            }
//        }
