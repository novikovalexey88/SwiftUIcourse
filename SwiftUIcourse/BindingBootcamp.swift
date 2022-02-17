//
//  BindingBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 17.02.2022.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgrondColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack{
            backgrondColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgrondColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            title = "fffff"
            backgroundColor = Color.orange
            buttonColor = Color.pink
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .background(buttonColor)
                .cornerRadius(10)
        })
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
}
