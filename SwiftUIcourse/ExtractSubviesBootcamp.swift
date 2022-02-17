//
//  ExtractSubviesBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 17.02.2022.
//

import SwiftUI

struct ExtractSubviesBootcamp: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            HStack {
                MyItem(title: "app", count: 1, color: .red)
                MyItem(title: "fg", count: 4, color: .gray)
            }
           
        }
    }
}


struct ExtractSubviesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviesBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text ("\(count)")
            Text (title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
