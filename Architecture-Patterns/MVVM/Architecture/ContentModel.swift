//
//  ContentModel.swift
//  Architecture
//
//  Created by Mayank Gupta on 30/06/24.
//

import Foundation

struct ContentModel: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let gender: String
}
