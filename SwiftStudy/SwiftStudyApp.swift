//
//  SwiftStudyApp.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 08/09/23.
//

import SwiftUI

@main
struct SwiftStudyApp: App {
    private let productsViewModel = makeGetProductsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ProductsScreen(viewModel: productsViewModel)
        }
    }
}
