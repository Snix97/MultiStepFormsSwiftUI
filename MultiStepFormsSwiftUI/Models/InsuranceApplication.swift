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

struct Personal {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var password: String = ""
    var confirmPassword: String = ""
}

struct Damage {
    var textDescription: String = ""
    var position: String = ""
    var cost: String = "0.00"
  
}



//Define application steps - diff views for each section
enum ApplicationStep {
    case personal
    case damage
    case address
    case review
    
    //Get the Screen title for each application step
    var title: String {
        switch self {
            case .personal: return "Personal Information"
            case .damage: return "Damage Information"
            case .address: return "Address Information"
            case .review: return "Review Application"
        }
    }
    
    //Logic to control buttons that user uses to move through the form
    var previous: ApplicationStep? {
        switch self {
            case .personal: return nil
            case .damage: return .personal
            case .address: return .damage
            case .review: return .address
        }
    }
    
    var next: ApplicationStep? {
        switch self {
            case .personal: return .damage
            case .damage: return .address
            case .address: return .review
            case .review: return nil
        }
    }
}

struct InsuranceApplication {
    
    var personal: Personal = Personal()
    var damage: Damage = Damage()
    var address: Address = Address()
}
