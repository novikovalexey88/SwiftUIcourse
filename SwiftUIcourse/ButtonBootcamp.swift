//
//  ButtonBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 03.02.2022.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
       
        VStack (spacing: 20) {
            Text(title)
            Button("press me"){
                
                self.title = "Button1 was pressd"
            }
            .accentColor(.red)
            Button(action: {
                self.title = "button2  was presd"
            }, label: {
                Text("Save" .uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                        .background(Color.blue
                                        .cornerRadius(10)
                                        .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title =  "Button 3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill"))
                    .font(.largeTitle)
                    .foregroundColor(.red)
            })
            
            Button(action: {
                self.title = "Button 4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
