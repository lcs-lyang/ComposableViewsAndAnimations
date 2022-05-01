//
//  FloatingMenu.swift
//  ComposableViewsAndAnimations
//
//  Created by Lillian Yang on 2022-04-29.
//

import SwiftUI

struct FloatingMenu: View {
    
    @State var picOffset = false
    @State var cameraOffset = false
    @State var menuRotation = 0.0
    
    var body: some View {
        
        ZStack{
            
            ZStack{
                
                ZStack{
                    
                    
                    Circle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                        .offset(y: picOffset ? -177 : 0)
                        .animation(
                            Animation
                                .easeIn(duration: 0.2)
                        )
                    
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 20 , height: 17)
                        .foregroundColor(.white)
                        .offset(y: picOffset ? -177 : 0)
                        .animation(
                            Animation
                                .easeIn(duration: 0.2)
                        )
                    
                }
                
                
                Circle()
                    .fill(.purple)
                    .frame(width: 75, height: 75)
                    .offset(y: cameraOffset ? -100 : 0)
                    .animation(
                        Animation
                            .easeIn(duration: 0.2)
                    )
                
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 32.5 , height: 25)
                    .foregroundColor(.white)
                    .offset(y: cameraOffset ? -100 : 0)
                    .animation(
                        Animation
                            .easeIn(duration: 0.2)
                    )
                
            }
            
            Circle()
                .fill(.purple)
                .frame(width: 100, height: 100)
                .onTapGesture {
                    picOffset.toggle()
                    cameraOffset.toggle()
                    
                }
            
            Image(systemName: "plus")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
            
            
            
        }
        
        
    }
}

struct FloatingMenu_Previews: PreviewProvider {
    static var previews: some View {
        FloatingMenu()
    }
}
