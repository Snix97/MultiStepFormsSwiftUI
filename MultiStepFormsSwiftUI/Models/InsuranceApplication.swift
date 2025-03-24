//
//  InsuranceApplication.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct Address {
    var street = ""
}

//Define application steps - diff views for each section
enum ApplicationSteps {
    case personal
    case damagew
    case address
    case review
}

struct InsuranceApplication {
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var password: String = ""
    var confirmPassword: String = ""
    
    var damage: String = ""
    var address: Address = Address()
}
