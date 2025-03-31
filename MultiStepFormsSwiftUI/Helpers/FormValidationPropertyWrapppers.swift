//
//  FormValiadationPropertyWrapppers.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 31/03/2025.
//

import SwiftUI

//Form Validation with Property Wrappers & Custom View Modifiers.  Can create a libray of these for differnt types of validations
@propertyWrapper
struct Email {
    
    var errorMessage: String
    private var value: String
    
    //TO indicate if the email value has been entered or changed
    private var isDirty = false
    
    //The value on which the property wrapper is being applied to
    var wrappedValue: String {
        get { value }
        set {
            value = newValue
            if !newValue.isEmpty {
                isDirty = true
            }
        }
    }
    //Helps with the validation calculation for the Email regEx
    var projectedValue: String? {
        
        //Guard against if isDirty(changed) and not empty so error won't initially show
        guard isDirty, !wrappedValue.isEmpty else { return nil }
        
        do {
            let regex = try NSRegularExpression(pattern: Constants.RegexPatterns.email, options: [.caseInsensitive])
            
            //Get the range of the wrappedValue
            let range = NSRange(location: 0, length: wrappedValue.utf16.count)
            
            //Check against email regex
            let isEmailValid = regex.firstMatch(in: wrappedValue, range: range) != nil
            
            return isEmailValid ? nil : errorMessage
        } catch {
            return errorMessage
        }
        
    }
    
    //Can use the default errorMsg here or pass in your own
    init(wrappedValue: String, errorMessage: String = "Invalid Email format") {
        self.errorMessage = errorMessage
        self.value = wrappedValue
    }
    
}

@propertyWrapper
struct Password {
    
    var errorMessage: String
    private var value: String
    
    //To indicate if the password value has been entered or changed
    private var isDirty = false
    
    //The value on which the property wrapper is being applied to
    var wrappedValue: String {
        get { value }
        set {
            value = newValue
            if !newValue.isEmpty {
                isDirty = true
            }
        }
    }
    //Helps with the validation calculation for the Email regEx
    var projectedValue: String? {
        
        //Guard against if isDirty(changed) and not empty so error won't initially show
        guard isDirty, !wrappedValue.isEmpty else { return nil }
        
        do {
            let regex = try NSRegularExpression(pattern: Constants.RegexPatterns.passord)
            
            //Get the range of the wrappedValue
            let range = NSRange(location: 0, length: wrappedValue.utf16.count)
            
            //Check against email regex
            let isEmailValid = regex.firstMatch(in: wrappedValue, range: range) != nil
            
            return isEmailValid ? nil : errorMessage
        } catch {
            return errorMessage
        }
        
    }
    
    //Can use the default errorMsg here or pass in your own
    init(wrappedValue: String, errorMessage: String = "Invalid Password format") {
        self.errorMessage = errorMessage
        self.value = wrappedValue
    }
    
}


