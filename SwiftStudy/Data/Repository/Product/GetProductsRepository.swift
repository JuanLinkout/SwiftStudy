//
//  GetProductRepository.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import Foundation

protocol GetProductsRepository {
    func get() -> [Product]
}
