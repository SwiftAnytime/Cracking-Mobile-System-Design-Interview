//
//  ContentViewModel.swift
//  Architecture
//
//  Created by Mayank Gupta on 17/02/24.
//

import Foundation

final class ContentViewModel: ObservableObject {
    
    @Published var dataSource: ContentModel = ContentModel(name: "Jared", address: "District 2, Ho Chi Minh", gender: "M")
    
}
