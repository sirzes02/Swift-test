//
//  ContentView.swift
//  SwiftUI-test1
//
//  Created by Santiago Varela Mejia on 12/09/21.
//

import SwiftUI

struct ContentView: View {
    let names = ["Camila", "Santiago", "Cesar", "Felipe", "Antonia", "Maria", "Luciana"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(names, id:\.self) { name in
                    NavigationLink(destination: Detail(name: name)) {
                        RowName(name: name)
                    }
                }
            }
            .navigationTitle("Names")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
