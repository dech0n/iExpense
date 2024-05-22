//
//  ExpenseListItem.swift
//  iExpense
//
//  Created by Dechon Ryan on 5/13/24.
//

import SwiftUI

struct ExpenseListItem: View {
    var item: ExpenseItem
    
    private var backgroundColor: Color {
        switch item.amount {
        case 0...10:
                .green
        case 10.01...100:
                .blue
        default:
                .purple
        }
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                
                Text(item.type)
            }
            
            Spacer()
            
            Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
        }
        .padding(10)
        .font(.none)
        .listRowBackground(self.backgroundColor)
    }
}

#Preview {
    ExpenseListItem(item: ExpenseItem(name: "Something", type: "Personal", amount: 10.00))
}
