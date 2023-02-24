//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var division = Division()
    
    @State private var selectedName: Int = 0 {
            
            didSet {
                if selectedName >= division.students.count {
                    selectedName  = 0
                }
            }
        }
    
    
    var achievement1 = ["Amazing", "Good", "Average", "Bad"]
    @State private var selectedAchievement1 = "Amazing"
    
    var achievement2 = ["Amazing", "Good", "Average", "Bad"]
    @State private var selectedAchievement2 = "Amazing"
    
    var achievement3 = ["Amazing", "Good", "Average", "Bad"]
    @State private var selectedAchievement3 = "Amazing"
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: CommentCardView()) {Text("View Comment")}
                List {
                    Section(header: Text("Class Attainment")) {
                        Picker("Please choose a grade", selection: $selectedAchievement1) {
                            ForEach(achievement1, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    Section(header: Text("Effort Level")) {
                        Picker("Please choose a grade", selection: $selectedAchievement2) {
                            ForEach(achievement2, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    Section(header: Text("EW Level")) {
                        Picker("Please choose a grade", selection: $selectedAchievement3) {
                            ForEach(achievement3, id: \.self) {
                                Text($0)
                            }
                        }
                        
                    }
                    Image("Eton-College-Portfolio-Image")
                                .resizable()
                                .scaledToFit()
                }
                .navigationTitle("\(division.students[0].displayStats())")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: { selectedName += 1
                            resetDisplay()
                            
                        }) {
                            Image(systemName: "arrow.backward")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { selectedName -= 1
                            resetDisplay() } ) {
                            Image(systemName: "arrow.forward")
                        }
                    }
                }
                Button("GENERATE COMMENT", action: {})
            }
        }
    }
    
    func resetDisplay() {
        selectedAchievement1 = "Amazing"
        selectedAchievement2 = "Amazing"
        selectedAchievement3 = "Amazing"
        division = Division()
            
        }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

