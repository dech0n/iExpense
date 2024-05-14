//
//  ContentView.swift
//  iExpense
//
//  Created by Dechon Ryan on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = Expenses()
    
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Business Expenses") {
                    ForEach(expenses.items) { item in
                        if item.type == "Business" {
                            ExpenseListItem(item: item)
                        }
                    }
                    .onDelete(perform: removeItems)
                }
                .font(.title3)
                
                Section("Personal Expenses") {
                    ForEach(expenses.items) { item in
                        if item.type == "Personal" {
                            ExpenseListItem(item: item)
                        }
                    }
                    .onDelete(perform: removeItems)
                }
                .font(.title3)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    showingAddExpense = true
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
