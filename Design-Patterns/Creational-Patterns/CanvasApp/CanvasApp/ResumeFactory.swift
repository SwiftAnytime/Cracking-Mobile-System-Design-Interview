//
//  ResumeFactory.swift
//  CanvasApp
//
//  Created by Mayank Gupta on 20/05/24.
//

import Foundation

struct ResumeFactory {
    
    func designCanvas(type : Platforms) -> CanvasProtocol {
        switch type {
        case .marketingResume :
            return InstagramPost(platform: type.rawValue, width: 350, height: 500)
            
        case .iOSResume :
            return InstagramPost(platform: type.rawValue, width: 300, height: 450)
            
        default :
            return iOSResume(platform: type.rawValue, width: 300, height: 450)
        }
    }
}
