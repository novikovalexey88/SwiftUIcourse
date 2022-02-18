//
//  PopoverBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 18.02.2022.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // Method 1 - sheet
//            .sheet(isPresented: $showNewScreen, content: {
//                Newscreen()
//            })
            // Method 2 Transition
//            ZStack {
//                if showNewScreen {
//                    Newscreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            //Method 3 - animationOffset
            
            Newscreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}
    
    
struct Newscreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
        var body: some View {
            ZStack (alignment: .topLeading) {
                Color.purple
                    .edgesIgnoringSafeArea(.all)
                
                Button(action: {
                  //  presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
        }
    }


struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
      PopoverBootcamp()
        // Newscreen()
    }
}
