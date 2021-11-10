//
//  TapCount.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/9/21.
//

import SwiftUI

struct TapCount: View {

    @State private var tapCount = 0

    var body: some View {
        Button("Tap count \(tapCount)"){
            tapCount += 1
        }
    }
}

struct TapCount_Previews: PreviewProvider {
    static var previews: some View {
        TapCount()
    }
}
