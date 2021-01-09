//
//  MainView.swift
//  Example with SwiftUI
//
//  Created by Frank Mortensen on 09/01/2021.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            List {
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxHeight: 200)
                    .cornerRadius(10)
                    .padding(.vertical, 20)

                Text(viewModel.currentText)
                    .font(.system(size: viewModel.fontSize))
                    .onAppear {
                        viewModel.pickRandomCurrentText()
                    }
                    .padding(.vertical, 20)

                HStack {
                    SimpleButton(label: "Større tekst") {
                        viewModel.increaseFontSize()
                    }

                    Spacer()

                    SimpleButton(label: "Bytt ut text") {
                        viewModel.pickRandomCurrentText()
                    }
                }
                .padding(.vertical, 20)
            }
            .padding(.vertical, 20)
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("Demo")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
        }

    }
}
