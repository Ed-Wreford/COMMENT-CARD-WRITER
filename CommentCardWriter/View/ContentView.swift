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
                List {
                    Section {
                        Text("In Div Attainment Level")
                            .font(.headline)
                        Toggle("Amazing", isOn: $toggleEnabled)
                        Toggle("Good", isOn: $toggleEnabled)
                        Toggle("Average", isOn: $toggleEnabled)
                        Toggle("Bad", isOn: $toggleEnabled)
                    }
                    Section {
                        Text("Effort Level")
                            .font(.headline)
                        Toggle("Amazing", isOn: $toggleEnabled)
                        Toggle("Good", isOn: $toggleEnabled)
                        Toggle("Average", isOn: $toggleEnabled)
                        Toggle("Bad", isOn: $toggleEnabled)
                    }
                    Section {
                        Text("EW Level")
                            .font(.headline)
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
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

