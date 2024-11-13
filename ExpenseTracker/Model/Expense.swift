//
//  Expense.swift
//  ExpenseTracker
//
//  Created by Audy M. on 13/11/24.
//

import SwiftUI

struct Expense: Identifiable,Hashable{
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String{
    case income = "Income"
    case expense = "expenses"
    case all = "ALL"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Kopi Kenangan", amount: 25000, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "Yellow"),
    Expense(remark: "Warung Padang Pagi Sore", amount: 125000, date: Date(timeIntervalSince1970: 1652814445), type: .expense, color: "Red"),
    Expense(remark: "Starbucks", amount: 54000, date: Date(timeIntervalSince1970: 1652382445), type: .expense, color: "Purple"),
    Expense(remark: "Gojek", amount: 12000, date: Date(timeIntervalSince1970: 1652296045), type: .expense, color: "Green"),
    Expense(remark: "Tokopedia", amount: 150000, date: Date(timeIntervalSince1970: 1652209645), type: .expense, color: "Yellow"),
    Expense(remark: "Payment November", amount: 4300000, date: Date(timeIntervalSince1970: 1652036845), type: .income, color: "Purple"),
    Expense(remark: "Payday November", amount: 7800000, date: Date(timeIntervalSince1970: 1651864045), type: .income, color: "Red"),
    Expense(remark: "Tokopedia", amount: 180000, date: Date(timeIntervalSince1970: 1651691245), type: .expense, color: "Yellow"),
    Expense(remark: "Shopee", amount: 150000, date: Date(timeIntervalSince1970: 1651518445), type: .expense, color: "Green"),
    Expense(remark: "Kopi Kenangan", amount: 26000, date: Date(timeIntervalSince1970: 1651432045), type: .expense, color: "Purple"),
]
