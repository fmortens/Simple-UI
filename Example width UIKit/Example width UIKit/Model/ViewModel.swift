//
//  ViewModel.swift
//  Example width UIKit
//
//  Created by Frank Mortensen on 10/01/2021.
//

import Foundation

class ViewModel {

    let availableTexts = [
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        "Lorem ipsum dolor sit amet.",
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    ]

    var currentIndex: Int

    var currentText: String {
        return availableTexts[currentIndex]
    }

    init() {
        currentIndex = 0
    }

    func pickRandomText() {
        let newIndex = Int.random(in: 0...availableTexts.count)

        if newIndex != currentIndex {
            currentIndex = newIndex
        } else {
            pickRandomText()
        }
    }
}
