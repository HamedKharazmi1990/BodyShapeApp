//
//  HeartRateRow.swift
//  BodyShapeApp
//
//  Created by Hamed Kharazmi on 08.01.26.
//

import SwiftUI

struct HeartRateRow: View {
    var body: some View {
        HStack {
            HeartRate(
                month: "Jan",
                day: 08,
                year: 2026
            )
            
            Spacer()
            Text("256")
                .font(.largeTitle)
                .fontWeight(.black)
            Text("bpm")
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .padding(.horizontal)
    }
}

struct HeartRate: View {
    let month: String
    let day: Int
    let year: Int
    var body: some View {
        HStack {
            HeartBoltView()
            
            VStack(alignment: .leading) {
                Text("Heart Rate")
                    .font(.headline)
                Text(verbatim: "\(day) \(month) \(year)")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
        }
    }
}

struct HeartBoltView: View {
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
            Image(systemName: "bolt.horizontal.fill")
                .imageScale(.small)
                .offset(x: -3)
                .scaleEffect(y: 0.7)
                .foregroundStyle(lightGreen)
        }
        .padding()
        .background(lightGreen)
        .clipShape(Circle())
    }
}

#Preview {
    HeartRateRow()
}
