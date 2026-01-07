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
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Hi, ")
                Text(userName)
                    .fontWeight(.bold)
            }.font(.largeTitle)
            
            Text("Your boards looks so good")
                .font(.title3)
                .frame(width: screenWidth / 2, alignment: .leading)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    WelcomeMessageView(userName: "Nadine")
}
