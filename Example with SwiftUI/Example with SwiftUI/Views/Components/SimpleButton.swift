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
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .buttonStyle(PlainButtonStyle())
    }
}

struct SimpleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SimpleButton(label: "Too small") {
                // Some action
            }
            .previewLayout(.fixed(width: 100, height: 80))

            SimpleButton(label: "Normal width") {
                // Some action
            }
            .previewLayout(.fixed(width: 200, height: 80))

            SimpleButton(label: "Too great width") {
                // Some action
            }
            .previewLayout(.fixed(width: 400, height: 80))
        }
        .padding()
    }
}
