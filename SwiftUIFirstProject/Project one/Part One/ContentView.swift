//
//  ContentView.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        Form{
            Section{
                Text("Hello, world")
                Text("Hello, world")
                Text("Hello, world")
                Text("Hello, world")
                Text("Hello, world")
            }

            Section{
                Text("Hello, world")
                Text("Hello, world")
                Text("Hello, world")
                Text("Hello, world")
                Text("Hello, world")
            }
        }
        .navigationTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
