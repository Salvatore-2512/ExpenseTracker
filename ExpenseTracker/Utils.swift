//
//  Utils.swift
//  ExpenseTracker
//
//  Created by Aryan Vasudeva on 15/5/25.
//

import Foundation

struct Utils {
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter
    }()
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }()
    
}
