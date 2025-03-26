//
//  ReviewView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct ReviewView: View {
    
    //No need to @Binding here as we're not changing anything
    let insuranceApplication: InsuranceApplication
    
    
    var body: some View {
        Form {
            Section("Personal") {
                Text(insuranceApplication.personal.firstName)
                Text(insuranceApplication.personal.lastName)
                Text(insuranceApplication.personal.email)
            }
            
            Section("Damage") {
                Text(insuranceApplication.damage.textDescription)
                Text(insuranceApplication.damage.position)
                Text(insuranceApplication.damage.cost)
            }
            
            Section("Address") {
                Text(insuranceApplication.address.addressDetails)
            }
        }
        
    }
}

#Preview {
    ReviewView(insuranceApplication: InsuranceApplication())
}
