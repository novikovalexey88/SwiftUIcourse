//
//  AnimationTimingBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 18.02.2022.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button ("Buttun") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.spring(
                            response: 1.0,
                            dampingFraction: 0.6,
                            blendDuration: 1.0))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
