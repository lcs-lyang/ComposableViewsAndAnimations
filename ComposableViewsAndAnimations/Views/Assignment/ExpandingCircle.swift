//
//  CustomViewOne.swift
//  ComposableViewsAndAnimations
//
//  Created by Lillian Yang on 2022-04-26.
//

import SwiftUI

struct ExpandingCircle: View {
    
    //MARK: STORED PROPERTIES
    
    @State private var expand = false
    
    @State var dateOpacity = true
    
    @State var inputOpacity = false
    
    let inputMessage: String
    
    //MARK: COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            
            HStack{
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.yellow)
                        .frame(width: expand ? 350 : 100, height: expand ? 400: 100)
                        .offset(y: expand ? 300 : 0)
                        .animation(.default)
                        .onTapGesture {
                            expand.toggle()
                            dateOpacity.toggle()
                            inputOpacity.toggle()
                            
                            
                            
                        }
                        .padding()
                    
                    Text("Date")
                        .foregroundColor(.white)
                        .opacity(dateOpacity ? 1.0 : 0.0)
                        .animation(
                            Animation
                                .easeIn(duration: 0.07)
                                .delay(0.2)
                                
                        )
                    
                    Text("\(inputMessage)")
                        .foregroundColor(.purple)
                        .opacity(inputOpacity ? 1.0 : 0.0)
                        .offset(x: 0, y: 175)
                        .animation(
                            Animation
                                .easeIn(duration: 0.07)
                                .delay(0.2)
                                
                        )
                    
                }
                Spacer()
            }
            
            Spacer()
            
        }
        
    }
    
}

struct CustomViewOne_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingCircle(inputMessage: "")
    }
}
