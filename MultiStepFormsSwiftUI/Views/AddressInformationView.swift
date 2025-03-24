//
//  AddressInformationView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct AddressInformationView: View {
    
    @Binding var address: Address
    var body: some View {
        Form {
            TextField("Street", text: $address.street)
            
           
        }
    }
}

#Preview {
    AddressInformationView(address: .constant(Address()))
}
