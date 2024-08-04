//
//  CanvasView.swift
//  CanvasApp
//
//  Created by Mayank Gupta on 20/05/24.
//

import SwiftUI

struct CanvasView: View {
    
    private let canvasAbstractFactory = CanvasAbstractFactory()
    @State private var width : Double = 100
    @State private var height : Double = 100
    @State private var selected : String = "Custom Size"
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(.white)
                .border(Color.black, width: 2)
                .padding()
            
            HStack {
                Menu {
                    Button(Platforms.youtube.rawValue){
                        let dimension = createCanvas(category: .social, platform: .youtube)
                        width = dimension.width
                        height = dimension.height
                        selected = dimension.platform
                    }
                    
                    Button(Platforms.x.rawValue){
                        let dimension = createCanvas(category: .social, platform: .x)
                        width = dimension.width
                        height = dimension.height
                        selected = dimension.platform
                    }
                    
                    Button(Platforms.instagram.rawValue){
                        let dimension = createCanvas(category: .social, platform: .instagram)
                        width = dimension.width
                        height = dimension.height
                        selected = dimension.platform
                    }
                    
                    Button(Platforms.marketingResume.rawValue){
                        let dimension = createCanvas(category: .resume, platform: .marketingResume)
                        width = dimension.width
                        height = dimension.height
                        selected = dimension.platform
                    }
                    
                    Button(Platforms.iOSResume.rawValue){
                        let dimension = createCanvas(category: .resume, platform: .iOSResume)
                        width = dimension.width
                        height = dimension.height
                        selected = dimension.platform
                    }
                    
                } label: {
                    Text("\(selected)")
                }
            }
        }
        .padding()
    }
    
    func createCanvas(category: Category, platform: Platforms) -> CanvasProtocol {
        return canvasAbstractFactory.createDesign(category: category, typeOfPost: platform)
    }
}

#Preview {
    CanvasView()
}
