//
//  MoodRowView.swift
//  MoodTracker
//
//  Created by Gabriela Sanchez on 27/01/25.
//

//Hugo Manzano 36231


import SwiftUI

struct MoodRowView: View {
    @Binding var selectedEmoji: String
    @Binding var note: String
    @Binding var date: Date
    // This view represents a single row in the MoodListView.
    // This will be used in MoodListView to show with a forEach all the entries created.
    
    // It should display:
    // - The selected emoji
    // - The note associated with the mood entry
    // - The date of the mood entry

    var body: some View {
        HStack {
            // Display the emoji in a large font
            
            Text(selectedEmoji)
                
            
            VStack(alignment: .leading) {
                // Display the note (headline font)
                // Display the date (subheadline font, gray color)
                Text(note)
                    .font(.headline)
                
                Text("\(date)")
            }
            
            Spacer() // Pushes content to the left
        }
    }
}

#Preview {
    MoodRowView(selectedEmoji: "😀", note: "I'm feeling great!", date: Date())
}
