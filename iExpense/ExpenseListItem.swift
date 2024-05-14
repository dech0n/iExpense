//
//  ExpenseListItem.swift
//  iExpense
//
//  Created by Dechon Ryan on 5/13/24.
//

import SwiftUI

struct ExpenseListItem: View {
    var item: ExpenseItem
    
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
        .background(item.backgroundColor, in: RoundedRectangle(cornerRadius: 8))
        .font(.none)
    }
}

#Preview {
    ExpenseListItem(item: ExpenseItem(name: "Something", type: "Personal", amount: 10.00))
}
