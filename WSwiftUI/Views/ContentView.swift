//
//  ContentView.swift
//  WSwiftUI
//
//  Created by wooky83 on 2021/03/17.
//

import SwiftUI

//struct ContentView: View {
//    @State private var alertIsVisible: Bool = false
//    @State private var sliderValue: Double = 50.0
//
//    var body: some View {
//        VStack {
//            Image(systemName: "swift")
//            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
//                .bold()
//                .kerning(2.0)
//                .multilineTextAlignment(.center)
//                .lineSpacing(4.0)
//                .font(.system(size: 14))
//            Text("89")
//                .kerning(-1)
//                .font(.largeTitle)
//                .fontWeight(.black)
//            HStack {
//                Text("1")
//                    .bold()
//                Slider(value: self.$sliderValue, in: 1.0...100.0)
//                Text("100")
//                    .bold()
//            }
//            Button(action: {
//                print("Hello, SwiftUI!")
//                self.alertIsVisible = true
//            }) {
//                Text("Hit me")
//            }
//            .alert(isPresented: $alertIsVisible, content: {
//                return Alert(title: Text("Hello there!"), message: Text("This is my first pop-up"), dismissButton: .default(Text("Awesome!")))
//            })
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            // The first View inside the NavigationView is the Master
            List(1 ... 5, id: \.self) { x in
                NavigationLink(destination: SecondView(detail: x)) {
                    Text("Master\nYou can display a list for example")
                }
            }
            .navigationBarTitle("Master")
            // The second View is the Detail
            Text("Detail placeholder\nHere you could display something when nothing from the list is selected")
                .navigationBarTitle("Detail")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SecondView: View {
    var detail: Int
    var body: some View {
        Text("Now you are seeing the real detail View! This is detail \(detail)")
    }
}
