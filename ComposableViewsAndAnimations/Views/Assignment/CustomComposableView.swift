//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    //MARK: STORED PROPERTIES
    //Horizontal position
    @State var xOffset = -100.0
    
    //Trigger to start the animation
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    //Rotation amount
    @State var rotation = 0.0
    
    //MARK: COMPUTED PROPERTIES
    
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50, height: 50)
               
            Text("OK")
                .foregroundColor(.white)
            
        }
        .rotationEffect(.degrees(rotation), anchor: .center)
        .offset(x: xOffset, y: 0)
        .animation(
            Animation.easeOut(duration: 2)
                .repeatForever(autoreverses: true)
        )
        
        .onReceive(timer) { input in
            
            // Turn once
            rotation = 360.0
            
            //Move the circle and text over to the right
            xOffset = 100.0
            
            //Turn off the timer
            timer.upstream.connect().cancel()
            
        }
        
    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}
