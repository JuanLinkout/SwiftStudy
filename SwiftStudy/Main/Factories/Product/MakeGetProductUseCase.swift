//
//  MakeGetProductUseCase.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import SwiftUI

func makeGetProductsUseCase() -> GetProductsUseCase {
    var repository = GetProductRepositoryMock()
    return GetProductsImplementation(getProductRepository: repository)
}
