//
//  TernaryBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 17.02.2022.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: ") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting" : "fdfdfd")
          
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                    .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200: 50,
                       height: isStartingState ? 400 : 43)
                
            }
        Spacer()
        }
    }

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
