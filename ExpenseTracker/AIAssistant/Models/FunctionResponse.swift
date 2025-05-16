//
//  FunctionResponse.swift
//  ExpenseTracker
//
//  Created by Aryan Vasudeva on 16/5/25.
//

import Foundation

typealias AddExpenseLogConfirmationCallback = ((Bool, AddExpenseLogViewProperties) -> Void)

enum UserConfirmation {
    case pending, confirmed, cancelled
}

struct AddExpenseLogViewProperties {
    let log: ExpenseLog
    let messageID: UUID?
    let userConfirmation: UserConfirmation
    let confirmationCallback: AddExpenseLogConfirmationCallback?
}

struct AIAssistantResponse {
    let text: String
    let type: AIAssistantResponseFunctionType
}

enum AIAssistantResponseFunctionType {
    case addExpenseLog(AddExpenseLogViewProperties)
    case listExpenses([ExpenseLog])
    case visualizeExpenses(ChartType, [Option])
    case contentText
}
