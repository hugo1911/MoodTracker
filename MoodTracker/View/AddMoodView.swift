//
//  AddMoodView.swift
//  MoodTracker
//
//  Created by Gabriela Sanchez on 27/01/25.
//

//Hugo Manzano 36231

import SwiftUI

struct AddMoodView: View {
    // Add the rest of let/var/@Environments needed for your app properties
    @State private var selectedEmoji = ""
    @State private var selecteDate = Date()
    @State private var selectedNote = ""
    
    @ObservedObject var viewModel: MoodViewModel
    let emojis = ["😀", "😊", "😐", "😞", "😡"]
    
    // This view allows users to create a new mood entry.
    // It should contain:
    // - A picker to selct an emoji for their mood
    // - A text field for adding a note
    // - A date picker to set the date of the mood entry
    // - A button to save the newe ntry and dismiss the view
    
    var body: some View {
        Form {
            // Add a Picker for selecting an emoji
            VStack{
                Picker(selection: $selectedEmoji, label: Text("Emoji")) {
                    ForEach(emojis, id: \.self) { emoji in
                        Text(emoji)
                    }
                    
                }
                // Add a TextField for entering a note
                TextField("Ingresa tu nota", text: $selectedNote)
                // Add a DatePicker for selecting the date
                DatePicker("Ingresa una fecha", selection: $selecteDate)
                // Add a Button to save the new mood entry
                Button("Guardar") {
                    viewModel.addMoodEntry(emoji: selectedEmoji, note: selectedNote, date: selecteDate)
                }
            }
            .navigationTitle("New Mood Entry")
            
        }
    }
}


#Preview {
    AddMoodView(viewModel: MoodViewModel())
}
