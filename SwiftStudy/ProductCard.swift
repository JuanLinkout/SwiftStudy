//
//  ProductCard.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 08/09/23.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var onPress: () -> Void
    private let width = UIScreen.main.bounds.size.width - (16 * 2) - 12
    
    private var hasDiscountApplied: Bool { return product.discount > 0}
    private var totalPrice: Double { return product.price }
    private var priceWithDiscount: Double { return totalPrice - totalPrice * product.discount }
    
    @State private var isPressed = false
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: product.imageURL)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: width / 2, height: width / 2)
            .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(product.category)
                    .font(.system(size: 14))
                    .foregroundColor(.textSecondary)
                
                Text(product.title)
                    .bold()
                    .font(.system(size: 16))
                
                HStack(spacing: 6) {
                    Text(maskCurrency(priceWithDiscount))
                        .bold()
                        .font(.system(size: 14))
                        .foregroundColor(.green)
                    
                    if hasDiscountApplied {
                        Text(maskCurrency(totalPrice))
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .strikethrough()
                    }
                }
            }
        }
        .frame(maxWidth: width / 2)
        .onTapGesture {
            onPress()
            
            withAnimation(Animation.easeOut(duration: 0.2)) {
                isPressed = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                // Reset the scale factor after a 0.1 second delay
                withAnimation(Animation.easeOut(duration: 0.2)) {
                    isPressed = false
                }
            }
        }
        .scaleEffect(isPressed ? 0.95 : 1)
        .opacity(isPressed ? 0.7 : 1)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        let product = Product(title: "Tênis Nike revolution 6", category: "Sapato", price: 19.9, discount: 0.20, imageURL: "https://images.unsplash.com/photo-1693930270229-694fc4216a69?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2864&q=80")
        ProductCard(product: product) {
            print("Entrou aqui")
        }
    }
}
