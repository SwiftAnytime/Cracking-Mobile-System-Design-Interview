//
//  ContentView.swift
//  Dependency-Injection
//
//  Created by Mayank Gupta on 28/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        NavigationStack {
            NavigationLink("Details") {
                DetailView()
            }
            .navigationTitle("Content View")
        }
    }
}
