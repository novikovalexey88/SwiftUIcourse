//
//  ListBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 01.01.2021.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["apple", "oprange", "banana", "peach"]
    @State var veggies: [String] = ["Tomato", "potato", "carrot", "onion"]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                
                ) {
                ForEach(fruits, id: \.self) { fruit in
                    Text (fruit.capitalized)
                        .font(.caption)
                        .foregroundColor(.white)
                       // .background(Color.pink)
                        //.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.vertical)
                    }
                
                .onDelete(perform: delete)
                .onMove(perform: move)
                .listRowBackground(Color.blue)
                    
                }
                Section(
                    header: Text("Fruits")) {
                ForEach(fruits, id: \.self) { fruit in
                    Text (fruit.capitalized)
                    }
                }
            }
            .accentColor(.purple)
            .navigationTitle("Grocery")
            .navigationBarItems(leading: EditButton(), trailing: addButton)

        }
        .accentColor(.red)
                
    }
    
    var addButton: some View {
        Button("Add" , action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconat")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
