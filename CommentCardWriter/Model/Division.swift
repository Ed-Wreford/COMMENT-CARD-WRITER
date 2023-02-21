//
//  Division.swift
//  CommentCardWriter
//
//  Created by Wreford, Edward (PGW) on 21/02/2023.
//

import Foundation

class Division {
    
    var students: [Student] = []
    
    init() {
        
        
        
    }
    
    #if DEBUG
    
    static func createDivision() -> Division {
        let division = Division()
        
        let student1 = Student(name: "Ed", house: "(DWBA)")
        division.students.append(student1)
        let student2 = Student(name: "Henry", house: "(AGDF)")
        division.students.append(student2)
        let student3 = Student(name: "Akshat", house: "(DWBA)")
        division.students.append(student3)
        let student4 = Student(name: "Matteo", house: "(IRG)")
        division.students.append(student4)
        let student5 = Student(name: "Alex", house: "(IRG)")
        division.students.append(student5)
        
        return division
    }
    
    static let example = [Division.createDivision()]
    
    #endif
    
}
