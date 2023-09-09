//
//  MaskCurrency.swift
//  SwiftStudy
//
//  Created by Juan Lucas Rossi on 09/09/23.
//

import SwiftUI

func maskCurrency(_ number: Double, currencySymbol: String = "R$") -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencySymbol = currencySymbol
    
    if let formattedNumber = formatter.string(from: NSNumber(value: number)) {
        return formattedNumber
    } else {
        return ""
    }
}

