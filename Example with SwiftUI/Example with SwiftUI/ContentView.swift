//
//  ContentView.swift
//  Example with SwiftUI
//
//  Created by Frank Mortensen on 09/01/2021.
//

import SwiftUI

class ViewModel: ObservableObject {
    let availableTexts: [String] = [
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "Lorem ipsum dolor sit amet.",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    ]

    @Published var currentText: String = ""

    func pickRandomCurrentText() {
        let index = Int.random(in: 0..<availableTexts.count)
        currentText = availableTexts[index]
    }

}

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        NavigationView {

                ScrollView {
                    VStack(alignment: .center, spacing: 10) {
                        Image("Background")
                            .resizable()
                            .frame(maxHeight: 200)
                            .cornerRadius(10)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)

                        Text(viewModel.currentText)
                            .onAppear {
                                viewModel.pickRandomCurrentText()
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)

                        Divider()

                        HStack {
                            Button("Større tekst") {
                                // something
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)

                            Spacer()

                            Button("Bytt ut text") {
                                viewModel.pickRandomCurrentText()
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)

                        Divider()

                        Spacer()
                    }

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
