//
//  main.swift
//  ErrorHandlingConcept
//
//  Created by MacStudent on 2019-06-17.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var e1 = Employee()
print(e1.employeeId)

var e2 = Employee(employeeId: 1, employeeName: "Sidharth", employeeEmail: "Swift.ca", employeeSalary: 5000)

print(e2!.employeeId)


var e3 = Employee(employeeId: 2, employeeName: "Sidharth", employeeEmail: "Swift.ca", employeeSalary: 5000)
print(e3?.employeeId)
//guard let e = e3 else
//
//{
//
//    print("False")
//
//}
//do{
//
//
//var e4 = try! Employee(employeeId: 1, employeeName: "Sidharth", employeeEmail: "Swift.ca", employeeSalary: 700)
//
//    print(e4?.employeeId ?? "employee Id not defined")
//
//}
//
do{

    
    var e4 = Employee(employeeId: 5, employeeName: "Sidharth", employeeEmail: "Swift.ca", employeeSalary: 10000)
    
    if let e = e4
    {
    
    print(e.employeeId)
       
    }
    try e4!.setSalary(salary: 700)
    
    print(e4!.employeeSalary)
    
}
    
catch EmployeeError.InvalidSalary(let msg){
    
    print(msg)
    
}
    catch EmployeeError.InvalidEmail
    {
        print("invalid Email")
}
catch EmployeeError.InvalidSalary(let msg){
    
    print(msg)
    //print(msg.self)
}
catch{

    print(error.localizedDescription)

}
