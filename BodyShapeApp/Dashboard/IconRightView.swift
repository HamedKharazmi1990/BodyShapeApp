//
//  IconRightView.swift
//  BodyShapeApp
//
//  Created by Hamed Kharazmi on 05.01.26.
//

import SwiftUI

struct IconRightView: View {
    let imageName: String
    var angle: Double = 0
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: imageName)
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                .rotation3DEffect(
                    .degrees(angle), axis: (x: 0, y: 0, z: 1))
        }
    }
}

#Preview {
    VStack {
        IconRightView(
            imageName: "circle.grid.cross.fill"
        )
        .padding()
        Spacer()
    }
}
