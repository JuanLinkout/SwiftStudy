//
//  ProductsViewModel.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import SwiftUI

struct ProductsViewModel {
    var products: [Product] = []
    var getProducts: GetProductsUseCase
    
    init(getProducts: GetProductsUseCase) {
        self.getProducts = getProducts
    }

    mutating func loadProducts() {
        let response = getProducts.get()
        products = response
    }
}
