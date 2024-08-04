//
//  CanvasAbstractFactory.swift
//  CanvasApp
//
//  Created by Mayank Gupta on 20/05/24.
//

import Foundation

struct CanvasAbstractFactory {
    
    func createDesign(category : Category, typeOfPost: Platforms) -> CanvasProtocol {
        switch category {
        case .social :
            return SocialFactory().designCanvas(type: typeOfPost)
            
        case .resume :
            return ResumeFactory().designCanvas(type: typeOfPost)
            
        }
    }
}
