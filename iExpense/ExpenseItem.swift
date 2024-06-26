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
}
