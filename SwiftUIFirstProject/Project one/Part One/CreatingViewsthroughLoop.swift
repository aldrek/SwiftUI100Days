//
//  CreatingViewsthroughLoop.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/9/21.
//

import SwiftUI

struct CreatingViewsthroughLoop: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"

    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct CreatingViewsthroughLoop_Previews: PreviewProvider {
    static var previews: some View {
        CreatingViewsthroughLoop()
    }
}
