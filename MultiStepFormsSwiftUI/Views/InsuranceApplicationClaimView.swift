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
                    AddressInformationView(address: $insuranceApplication.address)
                    case .review:
                    ReviewView(insuranceApplication: insuranceApplication)
                }
                
                HStack {
                    //Only show previous button if the current step actually has a previous one
                    if let previousStep = currentStep.previous {
                        Button("Previous") {
                            currentStep = previousStep
                        }
                    }

                    //Logic to show Next or submit. After Review we need to submit
                    Button(currentStep == .review ? "Submit" : "Next") {
                        if currentStep == .review {
                            print("Submit Insurance claim")
                        }
                        
                        //Only show Nexts button if the current step actually has a next one
                        else if let nextStep = currentStep.next {
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
