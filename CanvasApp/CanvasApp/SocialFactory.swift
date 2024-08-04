//
//  SocialFactory.swift
//  CanvasApp
//
//  Created by Mayank Gupta on 20/05/24.
//

import Foundation

struct SocialFactory {
    
    func designCanvas(type : Platforms) -> CanvasProtocol {
        switch type {
        case .youtube :
            return YoutubeThumbnail(platform: type.rawValue, width: 250, height: 150)
            
        case .instagram :
            return InstagramPost(platform: type.rawValue, width: 200, height: 200)
            
        case .x :
            return InstagramPost(platform: type.rawValue, width: 300, height: 300)
        
        default :
            return YoutubeThumbnail(platform: type.rawValue, width: 250, height: 150)
            
        }
    }
}
