//
//  ContentView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct InsuranceApplicationClaimView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .navigationTitle("Personal Information")
            .padding()
        }
       
    }
}

#Preview {
    InsuranceApplicationClaimView()
}
