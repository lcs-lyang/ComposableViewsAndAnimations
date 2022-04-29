//
//  ComposableViewTwo.swift
//  ComposableViewsAndAnimations
//
//  Created by Lillian Yang on 2022-04-27.
//

import SwiftUI

struct ComposableViewTwo: View {

    //MARK: STORED PROPERTIES

    @State var squareRotation = 0.0

    //Trigger to start the animation
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()

    //MARK: COMPUTED PROPERTIES

    var body: some View {

        Rectangle()
            .frame(width: 50, height: 50)
            .foregroundColor(.yellow)
            .rotationEffect(.degrees(squareRotation), anchor:.center)
            .animation(
                Animation.easeInOut(duration: 1.0)
                    .repeatForever(autoreverses: true)
            )
            .onReceive(timer) { input in

                squareRotation = 360.0

                timer.upstream.connect().cancel()

            }
    }
}

struct ComposableViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ComposableViewTwo()
    }
}
