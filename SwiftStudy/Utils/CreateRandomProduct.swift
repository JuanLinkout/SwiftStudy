//
//  CreateRandomProduct.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import SwiftUI

func createRandomProducts(count: Int) -> [Product] {
    var products: [Product] = []

    for _ in 0..<count {
        let randomSize = Int.random(in: 200...300)
        let imageURLString = "https://source.unsplash.com/random/\(randomSize)x\(randomSize)"
        
        let product = Product(
            title: "Product Title",
            category: "Product Category",
            price: Double.random(in: 10.0...100.0),
            discount: Double.random(in: 0.0...0.5), // 0% a 50% de desconto
            imageURL: imageURLString
        )
        
        products.append(product)
    }

    return products
}
