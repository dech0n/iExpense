//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dechon Ryan on 5/10/24.
//

import SwiftUI

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
    
    var backgroundColor: Color {
        if amount < 10.01 {
            .green
        } else if amount < 100.01 {
            .blue
        } else {
            .purple
        }
    }
}
