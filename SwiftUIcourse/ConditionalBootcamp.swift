//
//  ConditionalBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 17.02.2022.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isloading: Bool = false
    var body: some View {
       VStack(spacing: 20) {
        
        Button("IS LOADING \(isloading.description)") {
            isloading.toggle()
        }
        
        if isloading {
            ProgressView()
        }
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//
//            Circle()
//                .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//
//            Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
           Spacer()
       }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
