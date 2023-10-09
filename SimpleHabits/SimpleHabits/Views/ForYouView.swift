//
//  ForYou.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ForYouView: View {
    @Binding var detailsModalIsShown: Bool

    var isSessionAlreadyStarted: Bool
    var lastSessionPercentageToCompletion: Double
    var todayPercentageToGoal: Double

    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 36, height: 36, alignment: .center)
                .foregroundStyle(.accountButtonIcon)
                .overlay {
                    Image(systemName: "person")
                        .foregroundStyle(.white)
                }
                .padding()

            ScrollView() {
                Text(isSessionAlreadyStarted ? "Continue Listening" : "Start here")
                    .font(.title2)
                    .foregroundStyle(.white).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                ActivityCard(isModalShown: $detailsModalIsShown, isActivityStarted: isSessionAlreadyStarted, lastSessionCompletionPercentage: lastSessionPercentageToCompletion)
                        .frame(minHeight: 284)


                TodayProgressionCard(todayPercentageOfGoal: todayPercentageToGoal)
            }
            .refreshable {
                #warning("Add the action to the refreshing of For You View")
            }
        }
        .background {
            Color(.background).ignoresSafeArea()
        }
    }
}

#Preview {
    ForYouView(detailsModalIsShown: .constant(true), isSessionAlreadyStarted: false, lastSessionPercentageToCompletion: 0.3, todayPercentageToGoal: 0.4)
}
