//
//  BindingState.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/9/21.
//

import SwiftUI

struct BindingState: View {

    @State var name = ""

    var body: some View {
        Form{
            TextField("Enter your name", text: $name)
            Text("Name is \(name)")
        }
    }
}

struct BindingState_Previews: PreviewProvider {
    static var previews: some View {
        BindingState()
    }
}
