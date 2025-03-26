//
//  AddressInformationView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct AddressInformationView: View {
    
    @Binding var address: Address
    
    //@FocusState enable you to set and track which control has focus
    @FocusState private var keyboardFocused:Bool
    @State private var placeholderText = "Address line 1\nAddress line 2\nCity\nPostcode\nCountry"
   
    private var shouldShowPlaceholder:Bool { !keyboardFocused }
    
    var body: some View {
        Form {
            ZStack(alignment: .topLeading) {
                if shouldShowPlaceholder && self.address.addressDetails == "" {
                   Text(placeholderText)
                       .padding(EdgeInsets(top: 14, leading: 6, bottom: 10, trailing: 6))
                       .lineSpacing(7)
                       .foregroundStyle(Color.secondary.opacity(0.5))
                       .onTapGesture {
                           keyboardFocused = true
                       }
                }
               
                TextEditor(text: $address.addressDetails)
                   .focused($keyboardFocused)
                   .autocorrectionDisabled(true)
                   .autocapitalization(.words)
             }
        }
    }
}

#Preview {
    AddressInformationView(address: .constant(Address()))
}

