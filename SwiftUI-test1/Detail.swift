//
//  Detail.swift
//  SwiftUI-test1
//
//  Created by Santiago Varela Mejia on 12/09/21.
//

import SwiftUI

struct Detail: View {
    let name:String
    
    var body: some View {
        Text("\(name)")
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(name: "Test")
    }
}
