//
//  Stacks.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/11/21.
//

import SwiftUI

struct Stacks: View {
    var body: some View {

        //        VStack {
        //            Spacer()
        //            Text("First")
        //            Text("Second")
        //            Text("Third")
        //            Spacer()
        //            Spacer()
        //        }

        VStack{

            HStack{
                Text("1")
                Text("2")
                Text("3")
            }

            HStack{
                Text("4")
                Text("5")
                Text("6")
            }

            HStack{
                Text("7")
                Text("8")
                Text("9")
            }


        }

    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
