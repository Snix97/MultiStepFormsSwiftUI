//
//  DamageDetailsView.swift
//  MultiStepFormsSwiftUI
//
//  Created by Claire Roughan on 24/03/2025.
//

import SwiftUI

struct DamageDetailsView: View {
    
    @Binding var damage: Damage
    
    var body: some View {
            Form {
                //TODO - Refactor this!
                TextField("Damage description", text: $damage.textDescription, axis: .vertical)
                .safeAreaInset(edge: .leading) {
                    Image("damage2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.red)
                }
                
                TextField("Position", text: $damage.position)
                .safeAreaInset(edge: .leading) {
                    Image("damage-position")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.black.opacity(0.8))
                }
                
                TextField("Estimated cost", text: $damage.cost)
                .safeAreaInset(edge: .leading) {
                    Image(systemName: "sterlingsign")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.secondary.opacity(0.9))
                }
            }
      }
}

#Preview {
  /*  DamageDetailsView(damage:.constant(Damage(textDescription: "missing roof tiles", position: "External damage", cost: "£600.00"))) */
    
    DamageDetailsView(damage:.constant(Damage()))
}

