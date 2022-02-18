//
//  AnimationBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 18.02.2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimation = false
    var body: some View {
        VStack {
            
            Button ("botton") {
               
            isAnimation.toggle()
                
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimation ? 150 : 5)
                .fill(isAnimation ? Color.red : Color.green)
                .frame(width: isAnimation ? 100 : 50,
                       height: isAnimation ? 250 : 140)
                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
                .offset(x: isAnimation ? 100 : 30,
                        y: isAnimation ? 10 : 300)
                .animation(Animation
                            .default
                            .repeatForever(autoreverses: true))
            Spacer ()
            
                
            }
        }
    }

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
