//
//  ContentView.swift
//  BodyShapeApp
//
//  Created by Hamed Kharazmi on 05.01.26.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRightView(
                imageName: "circle.grid.cross.fill",
                angle: 45
            )
            .padding()
            
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Nadine")
                
                WeightView(weight: 65.2, weightUnits: "lb")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
