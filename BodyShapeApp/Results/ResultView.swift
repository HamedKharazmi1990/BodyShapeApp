//
//  ResultView.swift
//  BodyShapeApp
//
//  Created by Hamed Kharazmi on 07.01.26.
//

import SwiftUI

struct ResultView: View {
    let selectedWeightUnits = "lb"
    var body: some View {
        VStack(spacing: 30) { // TODO: Change this value
            VStack(spacing: 0) {
                ResultsTopRow()
                    .padding()
                
                CalendarBarView(
                    dailyData: [
                        .init(
                            day: "Mon",
                            percentage: 0.6,
                            amount: 1
                        ),
                        .init(
                            day: "Tue",
                            percentage: 0.3,
                            amount: 5
                        ),
                        .init(
                            day: "Wed",
                            percentage: 0.5,
                            amount: 8
                        ),
                        .init(
                            day: "Thu",
                            percentage: 1.0,
                            amount: 12
                        ),
                        .init(
                            day: "Fri",
                            percentage: 0.3,
                            amount: 15
                        )
                    ],
                    height: 100,
                    offsetY: -5,
                    selectedWeight: 12
                )
            }
            
            MainActivitiesView(
                activities: [
                    .init(
                        dim: 150,
                        activityName: "Running",
                        activityImage: "figure.run"
                    ),
                    .init(
                        dim: 150,
                        activityName: "Biking",
                        activityImage: "figure.outdoor.cycle"
                    ),
                    .init(
                        dim: 150,
                        activityName: "Climbing",
                        activityImage: "figure.climbing"
                    ),
                    .init(
                        dim: 150,
                        activityName: "Skating",
                        activityImage: "figure.skating"
                    )
                ]
            )
            
            HStack {
                Text("Your plan for January, 2026")
                
                Spacer()
                
                Text("1.8")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(selectedWeightUnits)")
            }.padding(.horizontal)
            
            HeartRateRow()
            
            // Continue Button
            Button {
                print("Button Tapped")
            } label: {
                Text("Continue")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Capsule().fill(Color.black))
                    .padding()
            }

        }
    }
}

#Preview {
    ResultView()
}
