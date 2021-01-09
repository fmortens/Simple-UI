//
//  ContentView.swift
//  Example with SwiftUI
//
//  Created by Frank Mortensen on 09/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                Image("Background").resizable()
                Text("Lorem ipsum")
                Divider()
                HStack {
                    Button("Større tekst") {
                        // something
                    }
                    Spacer()
                    Button("Bytt ut text") {
                        // something else
                    }
                }
                .padding()
                Divider()
                Spacer()
            }
            .navigationBarTitle("Demo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
