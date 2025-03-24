//
//  PersonalInformationView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct PersonalInformationView: View {
    /*
     @Binding = I don’t own this piece of data, I (essentially) own a
     pointer to it. If I change it, both the owning view and my view will
     be updated. the “owner” is something other than the view that the
     property is defined in (it is passed in from outside the view
     */
    @Binding var personal: Personal
    
    var body: some View {
        Form {
            TextField("First name", text: $personal.firstName)
            TextField("Last name", text: $personal.lastName)
            TextField("Email", text: $personal.email)
            TextField("Password", text: $personal.password)
            TextField("Confirm Password", text: $personal.confirmPassword)
        }
        
    }
}

#Preview {
    var personal = Personal(firstName: "Ted", lastName: "Smith", email: "smithy@gmail.com", password: "Pa55w0rd", confirmPassword: "Pa55w0rd")
    
    PersonalInformationView(personal: .constant(personal))
}
