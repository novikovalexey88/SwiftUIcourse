//
//  ExtractedFunction.swift
//  SwiftUIcourse
//
//  Created by 668 on 03.02.2022.
//

import SwiftUI

struct ExtractedFunction: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack{
            backgroundColor
            .edgesIgnoringSafeArea(.all)
            
           contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPresd()
            }, label: {
                Text ("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPresd() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunction_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunction()
    }
}
