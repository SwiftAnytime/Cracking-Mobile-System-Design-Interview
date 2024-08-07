//
//  ContentView.swift
//  Architecture
//
//  Created by Mayank Gupta on 17/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.dataSource.name)
            Text(viewModel.dataSource.address)
        }
        .padding()
    }
}
