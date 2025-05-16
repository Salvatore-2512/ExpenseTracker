//
//  ExpenseLog.swift
//  ExpenseTracker
//
//  Created by Aryan Vasudeva on 14/5/25.
//

import Foundation

struct ExpenseLog: Codable, Identifiable, Equatable {
    
    let id: String
    var name: String
    var category: String
    var amount: Double
    var currency: String
    var date: Date
//    var location: Location?
    
    var categoryEnum: Category {
        Category(rawValue: category) ?? .utilities
    }
    
    init(id: String, name: String, category: String, amount: Double, currency: String = "INR", date: Date) {
        self.id = id
        self.name = name
        self.category = category
        self.amount = amount
        self.currency = currency
        self.date = date
//        self.location = nil
    }
    
}

extension ExpenseLog {
    
    var dateText: String {
        Utils.dateFormatter.string(from: date)
    }
    
    var amountText: String {
        Utils.numberFormatter.currencySymbol = currency
        return Utils.numberFormatter.string(from: NSNumber(value: amount))
            ?? "\(amount)"
    }
    
}
