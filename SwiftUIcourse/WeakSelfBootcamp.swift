//
//  WeakSelfBootcamp.swift
//  SwiftUIcourse
//
//  Created by 668 on 13.02.2022.
//

import SwiftUI

struct WeakSelfBootcamp: View {
    
    @AppStorage("count") var count: Int?
    
    init() {
        count = 0
    }
    
    var body: some View {
        NavigationView{
            NavigationLink("Navigate", destination: WeakSelfSecondScreen ())
                .navigationTitle("screen 1")
        }
        .overlay(Text("\(count ?? 0)")
                    .font(.largeTitle)
                    .background(Color.green.cornerRadius(10))
                 , alignment: .topTrailing
        )
    }
}

struct WeakSelfSecondScreen: View {
    
    @StateObject var vm = WeakSelfSecondScreenViewModel()
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
                .foregroundColor(.red)
            
            if let data = vm.data {
                Text(data)
            }
        }
    }
}

class WeakSelfSecondScreenViewModel: ObservableObject {
    @Published var data: String? = nil
    
    init() {
        print("Initialize Now")
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount + 1, forKey: "count")
        getData()
    }
        deinit {
            print("deinitilaz now")
            let currentCount = UserDefaults.standard.integer(forKey: "count")
            UserDefaults.standard.set(currentCount - 1, forKey: "count")
        }
    func getData() {
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 10){ [weak self] in self?.data = "NEw data"
            
        }
       
    }
}

struct WeakSelfBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        WeakSelfBootcamp()
    }
}
