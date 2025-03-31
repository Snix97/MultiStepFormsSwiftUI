//
//  Constants.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 31/03/2025.
//

import Foundation

struct Constants {
    struct RegexPatterns {
        static let email = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        
        //At least 8 letters, upper, lowercase, special and digit
        static let passord = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$"
    }
}
