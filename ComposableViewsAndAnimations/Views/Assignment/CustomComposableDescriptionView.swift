//
//  CustomComposableDescriptionView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI

struct CustomComposableDescriptionView: View {
    
    // MARK: Stored properties
    @State private var phrase: String = ""
    
    
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Group {
                
                Text("Description")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                
                Text("""
                    This view could be used if you want your users to select what information they want to see. This can be an option if you do not want to overload your page wth data.

                    Plase enter today's date!
                    """)
                
                TextField("Enter an input value", text: $phrase)
                
            }
            .padding(.bottom)
            
            List {
                NavigationLink(destination: ExpandingCircle(inputMessage: "")) {
                    SimpleListItemView(title: "Expanding Circle",
                                       caption: "A circle that expands to a rectangle, vice versa.")
                }
            }
            
        }
        .padding()
        .navigationTitle("My Composable View")
        
    }
}

struct CustomComposableDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomComposableDescriptionView()
        }
    }
}
