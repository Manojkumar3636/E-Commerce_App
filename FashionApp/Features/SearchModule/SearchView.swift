//
//  SearchView.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import SwiftUI

struct SearchView: View {
    
    
    @StateObject private var viewModel = SearchViewModel()
    @State private var showDetailView: Bool = false
    @State private var selectedProduct: ProductModel?
    @State private var searchText: String = ""
    @State var path = NavigationPath()
    
    let columns: [GridItem] = [GridItem(.flexible() ,spacing: 16),
                               GridItem(.flexible(), spacing: 16)]
    
    private var filteredArray: [ProductModel] {
        if searchText.isEmpty {
            return viewModel.searchListArray
        } else {
            let lowercased = searchText.lowercased()
            return viewModel.searchListArray.filter({$0.title.lowercased().contains(lowercased) || String($0.price).contains(lowercased) })
        }
    }
    
    var body: some View {
        
        NavigationStack(path: $path) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(filteredArray, id: \.id) { product in
                            VStack {
                                Image(product.image)
                                    .resizable()
                                    .frame(width: (proxy.size.width / 2 ) - 16 , height: 180)
                                    .clipped()
                                    .cornerRadius(12)
                                Text("Product: \(product.title)")
                                Text("₹: \(String(product.price))")
                            }
                            .onTapGesture {
                                path.append(product)
                            }
                            
                        }
                    }
                    .padding()
                }
                .searchable(text: $searchText, prompt: "Search product")
                .onAppear(perform: viewModel.fetchProduct)
                .navigationDestination(for: ProductModel.self, destination: { product in
                    ProductDetailsView(product: product)
                })
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
