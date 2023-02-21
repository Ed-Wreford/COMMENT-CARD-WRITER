//
//  Student.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 08/02/2023.
//

import Foundation

class Student: ObservableObject {
    
    var name: String
    var house: String
    
    init(name: String, house: String) {
        
        self.name = name
        self.house = house
        
    }
    
    #if DEBUG
    static let example = Student(name: "Ed", house: "DWBA")
    #endif
}
