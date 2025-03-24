//
//  ContentView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct InsuranceApplicationClaimView: View {
    
    @State private var insuranceApplication = InsuranceApplication()
    @State private var currentStep: ApplicationStep = .personal
    
    
    var body: some View {
        NavigationStack {
            VStack {
                
                switch currentStep {
                    case .personal:
                    PersonalInformationView(personal: $insuranceApplication.personal)
                    case .damage:
                        DamageDetailsView()
                    case .address:
                        AddressInformationView()
                    case .review:
                        ReviewView()
                }
            }
            .navigationTitle(currentStep.title)
            .padding()
        }
       
    }
}

#Preview {
    InsuranceApplicationClaimView()
}
