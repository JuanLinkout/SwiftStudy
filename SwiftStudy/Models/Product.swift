//
//  Product.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 08/09/23.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    let price: Double
    let discount: Double
    let imageURL: String
}
