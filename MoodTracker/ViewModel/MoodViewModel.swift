//
//  MoodViewModel.swift
//  MoodTracker
//
//  Created by Gabriela Sanchez on 27/01/25.
//

//Hugo Manzano 36231


import Foundation

// This ViewModel manages the list of MoodEntry objects.
// It should:
// - Store an array of MoodEntry items
// - Provide a function to add new entries
// - Provide a function to delete existing entries
// - Use @Published so changes update the UI
class MoodViewModel: ObservableObject {
    // Define properties and functions here
    @Published var moodEntries: [MoodEntry] = []
    
    //funcion para agregar un nuevo mood
    func addMoodEntry (emoji: String, note: String, date: Date) {
        let newMoodEntry = MoodEntry(id: UUID(), emoji: emoji, note: note, date: date)
        moodEntries.append(newMoodEntry)
    }
    
    //funcion para eliminar un mood
    
    func deleteExistingEntries (emoji: String, note: String, date: Date) {
        
        let deleteMoodEntry = MoodEntry(id: UUID(), emoji: emoji, note: note, date: date)
        moodEntries.remove(at: 0)
    }
}
