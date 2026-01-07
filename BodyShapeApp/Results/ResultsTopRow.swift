//
//  ResultsTopRow.swift
//  BodyShapeApp
//
//  Created by Hamed Kharazmi on 07.01.26.
//

import SwiftUI

struct ResultsTopRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Jan 2026")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Image(systemName: "arrow.uturn.backward")
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                
        }
    }
}

#Preview {
    ResultsTopRow()
        .padding()
}
