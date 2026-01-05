//
//  WelcomeMessageView.swift
//  BodyShapeApp
//
//  Created by Hamed Kharazmi on 05.01.26.
//

import SwiftUI

struct WelcomeMessageView: View {
    let userName: String
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text("Hi, ")
                    Text(userName)
                        .fontWeight(.bold)
                }.font(.largeTitle)
                
                Text("Your boards looks so good")
                    .font(.title3)
                    .frame(width: geometry.size.width / 2, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    WelcomeMessageView(userName: "Nadine")
}
