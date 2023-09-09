//
//  GetProductRepositoryMock.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import Foundation

struct GetProductRepositoryMock: GetProductsRepository {
    func get() -> [Product] {
        return createRandomProducts(count: 10)
    }
}
