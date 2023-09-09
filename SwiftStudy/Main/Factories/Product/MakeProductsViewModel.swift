//
//  MakeGetProductUseCase.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import SwiftUI

func makeGetProductsViewModel() -> ProductsViewModel {
    let repository = GetProductRepositoryMock()
    let getProducts = GetProductsImplementation(getProductRepository: repository)
    return ProductsViewModel(getProducts: getProducts)
}
