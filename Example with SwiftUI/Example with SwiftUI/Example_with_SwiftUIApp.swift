//
//  Example_with_SwiftUIApp.swift
//  Example with SwiftUI
//
//  Created by Frank Mortensen on 09/01/2021.
//

import SwiftUI

@main
struct Example_with_SwiftUIApp: App {
    init() {
        // Take control of navigation bars
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = .darkGray
        coloredAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        coloredAppearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
