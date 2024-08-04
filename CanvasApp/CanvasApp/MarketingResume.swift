//
//  MarketingResume.swift
//  CanvasApp
//
//  Created by Mayank Gupta on 20/05/24.
//

import Foundation

struct MarketingResume : CanvasProtocol {
    var platform: String
    var width: Double
    var height: Double
    
    init(platform: String, width: Double, height: Double) {
        self.platform = platform
        self.width = width
        self.height = height
    }
}
