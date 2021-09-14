//
//  SwiftUI_test1App.swift
//  SwiftUI-test1
//
//  Created by Santiago Varela Mejia on 12/09/21.
//

import SwiftUI

@main
struct SwiftUI_test1App: App {
    @StateObject var employeesList = EmployeesModel()

    var body: some Scene {
        WindowGroup {
            EmployeesView()
                .environmentObject(employeesList)
        }
    }
}
