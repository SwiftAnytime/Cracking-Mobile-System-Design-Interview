//
//  Dependency_InjectionApp.swift
//  Dependency-Injection
//
//  Created by Mayank Gupta on 28/02/24.
//

import SwiftUI

@main
struct Dependency_InjectionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel())
        }
    }
}
