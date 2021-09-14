//
//  RowName.swift
//  SwiftUI-test1
//
//  Created by Santiago Varela Mejia on 12/09/21.
//

import SwiftUI

struct RowName: View {
    let name: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading
            ) {
                Text("\(name)")
                    .font(.headline)
                Text("Natural Person")
                    .font(.footnote)
            }
            Spacer()
            Image(systemName: "pencil").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}


struct RowName_Previews: PreviewProvider {
    static var previews: some View {
        RowName(name: "Test")
    }
}
