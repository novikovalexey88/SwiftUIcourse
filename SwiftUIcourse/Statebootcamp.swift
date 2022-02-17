//
//  Statebootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 03.02.2022.
//

import SwiftUI

struct Statebootcamp: View {
    
  @State  var backgroundCollor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            
            backgroundCollor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button1"){
                        backgroundCollor = .red
                        myTitle = "Butten 1 was presd"
                        count -= 1
                    }
                    Button("Button1"){
                        backgroundCollor = .purple
                        myTitle = "Butten 2 was presd"
                        count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct Statebootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Statebootcamp()
    }
}
