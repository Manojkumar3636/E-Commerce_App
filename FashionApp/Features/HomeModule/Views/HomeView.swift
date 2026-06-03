//
//  HomeView.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    @State var path = NavigationPath()
    
    let rows: [GridItem] = [GridItem(.fixed(100), spacing: 16)]
    
      
    var body: some View {
        
        NavigationStack(path: $path) {
            GeometryReader { proxy in
                VStack {
                    List {
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: rows, spacing: 16) {
                                ForEach(viewModel.headerItems, id: \.id) { product in
                                    Button {
                                        path.append(product)
                                    } label: {
                                        VStack {
                                            Image(product.image)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 80, height: 100)
                                                .clipped()
                                                .cornerRadius(12)
                                            Text(product.title)
                                        }
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .frame(height: 140)
                        .padding(.leading)
                        
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: rows, spacing: 16) {
                                VStack {
                                    Image("sale")
                                        .resizable()
                                        .frame(width: proxy.size.width, height: 200)
                                        .clipped()
                                        .cornerRadius(12)
                                    
                                }
                                Image("shoeoff2")
                                    .resizable()
                                    .frame(width: proxy.size.width, height: 200)
                                    .clipped()
                                    .cornerRadius(12)
                                
                                Image("watchoff2")
                                    .resizable()
                                    .frame(width: proxy.size.width, height: 200)
                                    .clipped()
                                    .cornerRadius(12)
                            }
                            .frame(height: 200)
                            .padding(.trailing)
                            
                            
                        }
                        .padding(.top)
                        .listRowSeparator(.hidden, edges: .all)
                        
                        ForEach(viewModel.productsArray, id: \.id) { product in
                            Section(product.title) {
                                ProductView(items: product.products, path: $path)
                            }
                            .listRowSeparator(.hidden, edges: .all)
                        }
                    }
                    .listStyle(.plain)
                    
                }                
                .onAppear(perform: viewModel.fetchProducts)
                .navigationTitle("Find your Style")
                .navigationDestination(for: ProductModel.self, destination: { product in
                    ProductDetailsView(product: product)
                })
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                        .tint(.black)
                    }
                    
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                        }
                        .tint(.black)
                    }
                    
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
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

