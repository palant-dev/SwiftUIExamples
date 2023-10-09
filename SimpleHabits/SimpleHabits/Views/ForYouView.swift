//
//  ForYou.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ForYouView: View {
    var isSessionAlreadyStarted: Bool
    var lastSessionPercentageToCompletion: Double

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

            Text(isSessionAlreadyStarted ? "Continue Listening" : "Start here")
                .foregroundStyle(.white).bold()
                .padding()

            ScrollView() {
                ActivityCard(isActivityStarted: isSessionAlreadyStarted, lastSessionCompletionPercentage: lastSessionPercentageToCompletion)
                    .frame(minHeight: 284)

                RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.wellnessScoreCardbg)
                    .padding(.horizontal)
                    .frame(minHeight: 284)
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
    ForYouView(isSessionAlreadyStarted: false, lastSessionPercentageToCompletion: 0.3)
}
