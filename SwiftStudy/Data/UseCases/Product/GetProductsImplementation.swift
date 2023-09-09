//
//  GetProductsImplementation.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import Foundation

struct GetProductsImplementation: GetProductsUseCase {
    var getProductRepository: GetProductsRepository
    
    func get() -> [Product] {
        return getProductRepository.get()
    }
}
