//
//  CustomViewOne.swift
//  ComposableViewsAndAnimations
//
//  Created by Lillian Yang on 2022-04-26.
//

import SwiftUI

struct CustomViewOne: View {
    
    //MARK: STORED PROPERTIES
    
    
    @State private var expand = false
     
    
    //MARK: COMPUTED PROPERTIES
    
    var body: some View {
        
        Circle()
                   .fill(Color.blue)
                   .frame(width: expand ? 400 : 100, height: expand ? 350 : 100)
                   .offset(y: expand ? -200 : 0)
                   .animation(.default)
                   .onTapGesture {
                       if expand == true {
                            expand = false
                       } else {
                           expand = true
                       }
                   }
            
    }
}

struct CustomViewOne_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewOne()
    }
}
