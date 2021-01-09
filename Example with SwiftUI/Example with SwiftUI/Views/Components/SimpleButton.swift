//
//  SimpleButton.swift
//  Example with SwiftUI
//
//  Created by Frank Mortensen on 09/01/2021.
//

import SwiftUI

struct SimpleButton: View {
    var label: String
    var action:  () -> Void

    var body: some View {
        Button(label, action: action)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct SimpleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SimpleButton(label: "Some label") {
                // Some action
            }
            SimpleButton(label: "Very large text 1234") {
                // Some action
            }
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
