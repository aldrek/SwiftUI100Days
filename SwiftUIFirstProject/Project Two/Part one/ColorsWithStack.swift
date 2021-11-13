//
//  Colors.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/11/21.
//

import SwiftUI

struct ColorsWithStack: View {
    var body: some View {
//        ZStack {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//
//            Text("Your content")
//                .foregroundColor(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()

        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)

    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        ColorsWithStack()
    }
}
