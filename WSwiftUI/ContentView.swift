//
//  ContentView.swift
//  WSwiftUI
//
//  Created by wooky83 on 2021/03/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.system(size: 14))
            Text("89")
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: .constant(50.0), in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {}) {
                Text("Hit me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
