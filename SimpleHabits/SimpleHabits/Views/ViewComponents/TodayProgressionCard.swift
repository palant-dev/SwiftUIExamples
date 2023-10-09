//
//  TodayProgressionCard.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 09/10/23.
//

import SwiftUI

struct TodayProgressionCard: View {
    var todayPercentageOfGoal: Double
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.wellnessScoreCardbg)
                .padding(.horizontal)
                .frame(minHeight: 200)

            ZStack {
                Circle()
                    .stroke(lineWidth: 8)
                    .padding(.horizontal, 120)
                    .padding(.vertical, 16)
                    .foregroundStyle(.white.opacity(0.1))
                Circle()
                    .trim(from: 0, to: todayPercentageOfGoal)
                    .stroke(style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round))
                    .padding(.horizontal, 120)
                    .padding(.vertical, 16)
                    .rotationEffect(Angle(degrees: 270))
                    .foregroundStyle(.white.opacity(1))

                VStack {
                    Text("\(Int(todayPercentageOfGoal * 100)) %")
                        .font(.largeTitle.bold())
                    Text("Today Goal")
                }
                .foregroundStyle(.white)
            }

        }
    }
}

#Preview {
    TodayProgressionCard(todayPercentageOfGoal: 0.34)
}
