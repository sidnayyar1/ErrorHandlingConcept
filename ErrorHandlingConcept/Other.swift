//
//  Other.swift
//  ErrorHandlingConcept
//
//  Created by MacStudent on 2019-06-17.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum EmployeeError: Error {
    case InvalidEmail
    case InvalidSalary(msg:String)

}
