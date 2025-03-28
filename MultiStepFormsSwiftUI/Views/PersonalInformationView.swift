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
            Section ("Contact Details") {
                TextField("First name", text: $personal.firstName)
                .safeAreaInset(edge: .leading) {
                    Image(systemName: "pencil.line")
                    .foregroundColor(.secondary)
                }
                
                TextField("Last name", text: $personal.lastName)
                .safeAreaInset(edge: .leading) {
                    Image(systemName: "pencil.line")
                        .foregroundColor(.secondary)
                }
                
                TextField("Email", text: $personal.email).autocapitalization(.none)
                    .keyboardType(.emailAddress)
                .safeAreaInset(edge: .leading) {
                    Image(systemName: "envelope")
                        .foregroundColor(.secondary)
                }
                
                TextField("Phone", text: $personal.phone)
                    .keyboardType(.phonePad)
                .safeAreaInset(edge: .leading) {
                    Image(systemName: "phone")
                        .foregroundColor(.secondary)
                }
            }
            .disableAutocorrection(true)
            
            Section("Create Login") {
                TextField("Username", text: $personal.userName).autocapitalization(.none)
                    .safeAreaInset(edge: .leading) {
                        Image(systemName: "person")
                            .foregroundColor(.secondary)
                    }
                SecureTextField(text: $personal.password, secureTitle: "Password")
                SecureTextField(text: $personal.confirmPassword, secureTitle: "Confirm Password")
            }
        }

    }
}

#Preview {
    let personal = Personal(firstName: "Ted", lastName: "Smith", email: "smithy@gmail.com", password: "Pa55w0rd", confirmPassword: "Pa55w0rd")
    
    PersonalInformationView(personal: .constant(personal))
}

