//
//  MoodListView.swift
//  MoodTracker
//
//  Created by Gabriela Sanchez on 27/01/25.
//

//Hugo Manzano 36231


import SwiftUI

struct MoodListView: View {
    
    @ObservedObject var viewModel: MoodViewModel
    
    // This view should be the first screen of the app.
    // It should:
    // - Display a list of MoodEntry items
    // - Allow the user to delete entries
    // - Navigate to AddMoodView when tapping the "+" button
    // - Use a NavigationView
    
    var body: some View {
        NavigationView {
            // Add a List here to show MoodEntry items
            // Each row should use MoodRowView
            List {
                ForEach(viewModel.moodEntries) { entry in
                    NavigationLink(destination: MoodRowView(selectedEmoji: entry.emoji, note: entry.note, date: entry.date)) {
                        MoodRowView(selectedEmoji: entry.emoji, note: entry.note, date: entry.date)
                    
                }
                
                // Add a Toolbar with a "+" button
                // The button should navigate to AddMoodView
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: AddMoodView(viewModel: viewModel)) {
                            Image(systemName: "plus")
                            
                        }
                    }
                }
            }
        }
    }
}
        
