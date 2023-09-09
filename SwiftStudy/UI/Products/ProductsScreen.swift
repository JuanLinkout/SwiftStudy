//
//  ContentView.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 08/09/23.
//

import SwiftUI

struct ProductsScreen: View {    
    @State var viewModel: ProductsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack() {
                Text("Listagem de produtos")
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .padding(20)
            
            Divider()
            
            ScrollView {
                LazyVGrid(columns: [GridItem(spacing: 12), GridItem(spacing: 12)]) {
                    ForEach(viewModel.products, id: \.self.id) { item in
                        ProductCard(product: item) {
                            print(item)
                        }
                    }
                }
                .padding(16)
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .onAppear {
            viewModel.loadProducts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsScreen(viewModel: makeGetProductsViewModel())
    }
}
