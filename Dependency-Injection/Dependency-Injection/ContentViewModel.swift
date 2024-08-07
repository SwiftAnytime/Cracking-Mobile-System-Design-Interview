//
//  ContentViewModel.swift
//  Dependency-Injection
//
//  Created by Mayank Gupta on 28/02/24.
//

import Foundation
import SwiftUI

class ContentViewModel : ObservableObject {
    
    @Published var dataSource: [ContentModel] = [ContentModel(id: "4321", name: "Thang", address: "District 2, Ho Chi Minh, Vietnam", gender: "M")]
  
}
