//
//  ButtonsAndImages.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/11/21.
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {

        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
        }

//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundColor(.white)
//                .background(.red)
//        }

    }


    func buttonTapped()  {
            print("Yes!")
    }
}

struct ButtonsAndImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsAndImages()
    }
}
