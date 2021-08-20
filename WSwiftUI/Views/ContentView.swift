

import SwiftUI

struct ContentView: View {
    @State var artworks = artData
    
//    Navigation Animation Push Pop Animated
//    init() {
//        UINavigationBar.setAnimationsEnabled(false)
//    }
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailContentView()) {
                    Text("detail ContentView")
                }
                .padding()
                .foregroundColor(.green)
                NavigationLink(destination: MeoContentView()) {
                    Text("MeowMixHeader")
                }
                .padding()
                .foregroundColor(.blue)
                NavigationLink(destination: EmoContentView()) {
                    Text("Emo ContentView")
                }
                .padding()
                .foregroundColor(.blue)
                
                List(artworks) { artwork in
                    NavigationLink(destination: DetailView(artwork: artwork)) {
                        Text(artwork.title)
                    }
                }
                .listStyle(PlainListStyle())
            }
            
            .navigationBarTitle("Wooky")
            
            DetailView(artwork: artworks[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
