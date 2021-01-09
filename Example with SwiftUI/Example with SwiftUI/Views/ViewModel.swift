//
//  ViewModel.swift
//  Example with SwiftUI
//
//  Created by Frank Mortensen on 09/01/2021.
//

import SwiftUI

class ViewModel: ObservableObject {
    var currentIndex = 0
    let availableTexts: [String] = [
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "Lorem ipsum dolor sit amet.",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    ]

    @Published var currentText: String = ""
    @Published var fontSize: CGFloat = 16

    func pickRandomCurrentText() {
        let newIndex = Int.random(in: 0..<availableTexts.count)

        // Make sure we get a new index
        if newIndex != currentIndex {
            currentIndex = newIndex
        } else {
            // Try again
            pickRandomCurrentText()
        }

        currentText = availableTexts[currentIndex]
    }

    func increaseFontSize() {
        fontSize += 1.0
    }

}
