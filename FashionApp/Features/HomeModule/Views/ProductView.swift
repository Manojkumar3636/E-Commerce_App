//
//  ProductView.swift
//  FashionApp
//
//  Created by sham kumar s on 21/02/26.
//

import SwiftUI

struct ProductView: View {
    
    let items: [ProductModel]
    
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.fixed(100), spacing: 16)], spacing: 16) {
                ForEach(items, id: \.id) { product in
                    VStack {
                        Image(product.image)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .clipped()
                            .cornerRadius(12)
                        Text("Category: \(product.category)")
                        Text("₹: \(String(product.price))")
                            .foregroundColor(.pink)
                    
                    }
                    .onTapGesture {
                        path.append(product)
                    }
                }
            }
        }
    }
}

//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView(items: [])
//    }
//}
