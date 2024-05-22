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
        if item.amount < 10.01 {
            .green
        } else if item.amount < 100.01 {
            .blue
        } else {
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
