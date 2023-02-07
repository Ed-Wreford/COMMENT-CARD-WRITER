//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 07/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleEnabled: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: CommentCardView()) {Text("View Comment")}
                List {
                    Section(header: Text("Class Attainment")) {
                        Toggle("Amazing", isOn: $toggleEnabled)
                        Toggle("Good", isOn: $toggleEnabled)
                        Toggle("Average", isOn: $toggleEnabled)
                        Toggle("Bad", isOn: $toggleEnabled)
                    }
                    Section(header: Text("Effort Level")) {
                        Toggle("Amazing", isOn: $toggleEnabled)
                        Toggle("Good", isOn: $toggleEnabled)
                        Toggle("Average", isOn: $toggleEnabled)
                        Toggle("Bad", isOn: $toggleEnabled)
                    }
                    Section(header: Text("EW Level")) {
                        Toggle("Amazing", isOn: $toggleEnabled)
                        Toggle("Good", isOn: $toggleEnabled)
                        Toggle("Average", isOn: $toggleEnabled)
                        Toggle("Bad", isOn: $toggleEnabled)
                        
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

