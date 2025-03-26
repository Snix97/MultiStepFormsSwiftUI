//
//  SecureTextFieldView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct SecureTextField: View {
    
    @State var isSecureField: Bool = true
    @Binding var text: String
    var secureTitle: String = ""

    var body: some View {
        HStack {
            //Need to toggle between secure & normal textField
            if isSecureField {
                SecureField(secureTitle, text: $text)
                    
            } else {
                TextField(text, text: $text)
            }
        }
        .safeAreaInset(edge: .leading) {
            Image(systemName: "lock")
                .foregroundColor(.secondary)
        }
        .autocapitalization(.none)
        .overlay(alignment: .trailing) {
            Image(systemName: isSecureField ?  "eye.slash" : "eye")
                .onTapGesture {
                    isSecureField.toggle()
                }
                .foregroundColor(.accentColor)
        }
    }
}

#Preview {
    SecureTextField(isSecureField: true, text: .constant("Password"))
}
