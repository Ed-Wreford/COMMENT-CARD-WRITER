//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sectionOneAmazing: Bool = false
    @State private var sectionOneGood: Bool = false
    @State private var sectionOneAverage: Bool = false
    @State private var sectionOneBad: Bool = false
    
    @State private var sectionTwoAmazing: Bool = false
    @State private var sectionTwoGood: Bool = false
    @State private var sectionTwoAverage: Bool = false
    @State private var sectionTwoBad: Bool = false
    
    @State private var sectionThreeAmazing: Bool = false
    @State private var sectionThreeGood: Bool = false
    @State private var sectionThreeAverage: Bool = false
    @State private var sectionThreeBad: Bool = false
    
    
    
    var body: some View {
        
        let sec1Amazing = Binding<Bool>(get: { self.sectionOneAmazing }, set: { self.sectionOneAmazing = $0; self.sectionOneGood = false; self.sectionOneAverage = false; self.sectionOneBad = false })
        let sec1Good = Binding<Bool>(get: { self.sectionOneGood }, set: { self.sectionOneAmazing = false; self.sectionOneGood = $0; self.sectionOneAverage = false; self.sectionOneBad = false })
        let sec1Average = Binding<Bool>(get: { self.sectionOneAverage }, set: { self.sectionOneAmazing = false; self.sectionOneGood = false; self.sectionOneAverage = $0; self.sectionOneBad = false })
        let sec1Bad = Binding<Bool>(get: { self.sectionOneBad }, set: { self.sectionOneAmazing = false; self.sectionOneGood = false; self.sectionOneAverage = false; self.sectionOneBad = $0 })
        
        let sec2Amazing = Binding<Bool>(get: { self.sectionTwoAmazing }, set: { self.sectionTwoAmazing = $0; self.sectionTwoGood = false; self.sectionTwoAverage = false; self.sectionThreeBad = false })
        let sec2Good = Binding<Bool>(get: { self.sectionTwoGood }, set: { self.sectionTwoAmazing = false; self.sectionTwoGood = $0; self.sectionTwoAverage = false; self.sectionThreeBad = false })
        let sec2Average = Binding<Bool>(get: { self.sectionTwoAverage }, set: { self.sectionTwoAmazing = false; self.sectionTwoGood = false; self.sectionTwoAverage = $0; self.sectionThreeBad = false })
        let sec2Bad = Binding<Bool>(get: { self.sectionThreeBad }, set: { self.sectionTwoAmazing = false; self.sectionTwoGood = false; self.sectionTwoAverage = false; self.sectionThreeBad = $0 })
        
        let sec3Amazing = Binding<Bool>(get: { self.sectionThreeAmazing }, set: { self.sectionThreeAmazing = $0; self.sectionThreeGood = false; self.sectionThreeAverage = false; self.sectionTwoBad = false })
        let sec3Good = Binding<Bool>(get: { self.sectionThreeGood }, set: { self.sectionThreeAmazing = false; self.sectionThreeGood = $0; self.sectionThreeAverage = false; self.sectionTwoBad = false })
        let sec3Average = Binding<Bool>(get: { self.sectionThreeAverage }, set: { self.sectionThreeAmazing = false; self.sectionThreeGood = false; self.sectionThreeAverage = $0; self.sectionTwoBad = false })
        let sec3Bad = Binding<Bool>(get: { self.sectionTwoBad }, set: { self.sectionThreeAmazing = false; self.sectionThreeGood = false; self.sectionThreeAverage = false; self.sectionTwoBad = $0 })
        
        NavigationView {
            VStack {
                NavigationLink(destination: CommentCardView()) {Text("View Comment")}
                List {
                    Section(header: Text("Class Attainment")) {
                        Toggle("Amazing", isOn: sec1Amazing)
                        Toggle("Good", isOn: sec1Good)
                        Toggle("Average", isOn: sec1Average)
                        Toggle("Bad", isOn: sec1Bad)
                    }
                    Section(header: Text("Effort Level")) {
                        Toggle("Amazing", isOn: sec2Amazing)
                        Toggle("Good", isOn: sec2Good)
                        Toggle("Average", isOn: sec2Average)
                        Toggle("Bad", isOn: sec2Bad)
                    }
                    Section(header: Text("EW Level")) {
                        Toggle("Amazing", isOn: sec3Amazing)
                        Toggle("Good", isOn: sec3Good)
                        Toggle("Average", isOn: sec3Average)
                        Toggle("Bad", isOn: sec3Bad)
                        
                    }
                    
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

