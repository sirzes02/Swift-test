//
//  Employees.swift
//  SwiftUI-test1
//
//  Created by Santiago Varela Mejia on 12/09/21.
//

import SwiftUI

struct EmployeesView: View {
    @EnvironmentObject var employeesList: EmployeesModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(employeesList.employees) { employee in
                    EmployeeRow(employee: employee)
                }
            }
            .navigationTitle("Employees")
            .navigationBarItems(trailing:
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Image(systemName: "plus")
                                    }))
        }
    }
}

struct Employees_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView()
            .environmentObject(EmployeesModel())
    }
}

struct EmployeeRow: View {
    let employee: Employee
    @ObservedObject var avatarEmployee = NetworkModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(employee.lastName), \(employee.firstName)")
                Text("\(employee.email)")
                    .font(.footnote)
            }
            Spacer()
            avatarEmployee.avatar
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
        }
        onAppear {
            avatarEmployee.getImage(url: employee.avatar)
        }
    }
}
