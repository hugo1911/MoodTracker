//
//  MoodEntry.swift
//  MoodTracker
//
//  Created by Gabriela Sanchez on 27/01/25.
//

//Hugo Manzano 36231


import Foundation

// This struct represents a MoodEntry that all the parameters will be used on the viewModel such as "moodEntries: [MoodEntry]".
// Each entry should have:
// - A unique ID (UUID)
// - An emoji representing the mood
// - A short note describing the mood
// - A date when the mood was recorded
struct MoodEntry: Identifiable {
    // Define properties here
    
    var id: UUID
    var emoji: String
    var note: String
    var date: Date
    
}
