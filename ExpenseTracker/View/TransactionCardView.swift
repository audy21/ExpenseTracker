//
//  TransactionCardView.swift
//  ExpenseTracker
//
//  Created by Audy M. on 13/11/24.
//

import SwiftUI

struct TransactionCardView: View {
    
    var expense: Expense
    
    @EnvironmentObject var expenseViewModel: ExpenseViewModel
    
    var body: some View {
        HStack(spacing: 12) {
            
            if let first = expense.remark.first{
                Text(String(first))
                    .font(.title.bold())
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background{
                        Circle()
                            .fill(Color(expense.color))
                    }
                    .shadow(color: .black.opacity(0.08), radius: 5, x: 5, y: 5)
            }
            
            Text(expense.remark)
                .fontWeight(.semibold)
                .lineLimit(1)
                .frame(maxWidth: .infinity,alignment: .leading)
            
            VStack(alignment: .trailing, spacing: 7) {
                let price = expenseViewModel.convertNumberToPrice(value: expense.type == .expense ? -expense.amount : expense.amount)
                
                Text(price)
                    .font(.callout)
                    .opacity(0.7)
                    .foregroundColor(expense.type == .expense ? Color("Red") : Color("Green"))
                
                Text(expense.date.formatted(date: .numeric, time: .omitted))
                    .font(.caption)
                    .opacity(0.5)
            }
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.white)
        }
    }
}

struct TransactionCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

