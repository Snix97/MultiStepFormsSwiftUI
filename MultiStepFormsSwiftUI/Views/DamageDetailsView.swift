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
            TextField("Damage description", text: $damage.textDescription)
            TextField("Position", text: $damage.position)
            TextField("Estimated cost", text:$damage.cost)
           
        }

    }
}

#Preview {
    DamageDetailsView(damage:.constant(Damage(textDescription: "missing roof tiles", position: "External damage", cost: "£600.00")))
}
