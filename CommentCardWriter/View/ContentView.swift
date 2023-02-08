//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    var achievement = ["Amazing", "Good", "Average", "Bad"]
    @State private var selectedAchievement = "Amazing"
    
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: CommentCardView()) {Text("View Comment")}
                List {
                    Section(header: Text("Class Attainment")) {
                        Picker("Please choose a grade", selection: $selectedAchievement) {
                            ForEach(achievement, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    Section(header: Text("Effort Level")) {
                        Picker("Please choose a grade", selection: $selectedAchievement) {
                            ForEach(achievement, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    Section(header: Text("EW Level")) {
                        Picker("Please choose a grade", selection: $selectedAchievement) {
                            ForEach(achievement, id: \.self) {
                                Text($0)
                            }
                        }
                        
                    }
                    Image("Eton-College-Portfolio-Image")
                                .resizable()
                                .scaledToFit()
                }
                .navigationTitle("STUDENT NAME")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {} ) {
                            Image(systemName: "arrow.backward")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {} ) {
                            Image(systemName: "arrow.forward")
                        }
                    }
                }
                Button("GENERATE COMMENT", action: {})
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

