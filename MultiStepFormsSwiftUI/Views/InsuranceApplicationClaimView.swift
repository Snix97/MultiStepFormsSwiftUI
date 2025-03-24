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
                    DamageDetailsView(damage: $insuranceApplication.damage)
                    case .address:
                        AddressInformationView()
                    case .review:
                        ReviewView()
                }
                    
                HStack {
                    //Only show previous button if the current step actually has a previous one
                    if let previousStep = currentStep.previous {
                        Button("Previous") {
                            currentStep = previousStep
                        }
                    }
                    
                    //Only show Nexts button if the current step actually has a next one
                    if let nextStep = currentStep.next {
                        Button("Next") {
                            currentStep = nextStep
                        }
                    }
                    
                }
               
                
            }.navigationTitle(currentStep.title)
            
           
        }
       
    }
}

#Preview {
    InsuranceApplicationClaimView()
}
