//
//  Alert.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/11/21.
//

import SwiftUI

struct AlertShow: View {

    @State var isShowAleat : Bool = false

    var body: some View {
        Button("Show aleart"){
            isShowAleat = true
        }
        .alert("Show alert", isPresented: $isShowAleat){
            Button("Delete" , role: .destructive){}
            Button("No" , role: .cancel){}
        } message: {
            Text("alert")
        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        AlertShow()
    }
}
