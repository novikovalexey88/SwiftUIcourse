//
//  NavigationBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 18.02.2022.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world",
                               destination: MyOtherScreen())
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inbox")
            //.navigationBarTitleDisplayMode(.automatic)
           // .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                ,
                trailing:
                    NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.red)
            )
          
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("GreenScreen")
                .navigationBarHidden(true)
            
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Clic here", destination: Text("3 screen"))
            }
            
            
            
        }
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
