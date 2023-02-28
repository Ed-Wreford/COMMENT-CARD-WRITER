//
//  CommentCardView.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 07/02/2023.
//

import SwiftUI

struct CommentCardView: View {
    
    @State private var selectedAchievement1: String
    @State private var selectedAchievement2: String
    @State private var selectedAchievement3: String
    
    var body: some View {
        Text("\(theFunctionThatGeneratesComment(selectedAchievement1: selectedAchievement1, selectedAchievement2: selectedAchievement2, selectedAchievement3: selectedAchievement3))")
    }
}

struct CommentCardView_Previews: PreviewProvider {
    static var previews: some View {
        CommentCardView(selectedAchievement1: String, selectedAchievement2: String, selectedAchievement3: String)
    }
}
