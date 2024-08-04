//
//  CanvasProtocol.swift
//  CanvasApp
//
//  Created by Mayank Gupta on 20/05/24.
//

import Foundation

protocol CanvasProtocol {
    var platform : String {get}
    var width : Double {get}
    var height : Double {get}
}

enum Platforms : String {
    case youtube = "Youtube"
    case instagram = "Instagram"
    case x = "X"
    case marketingResume = "Marketing Resume"
    case iOSResume = "iOS Resume"
}

enum Category {
    case social
    case resume
}
