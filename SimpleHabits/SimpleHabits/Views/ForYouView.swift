//
//  ForYou.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ForYouView: View {
    @Binding var isSessionAlreadyStarted: Bool

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 36, height: 36, alignment: .center)
                    .foregroundStyle(.accountButtonIcon)
                    .overlay {
                        Image(systemName: "person")
                            .foregroundStyle(.white)
                    }
                    .padding()
                Spacer()
            }

            Spacer()

            HStack {
                Text(isSessionAlreadyStarted ? "Continue Listening" : "Start here")
                    .foregroundStyle(.white).bold()
                    .padding()
                Spacer()
            }
            ActivityCard()

            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.wellnessScoreCardbg)
                .padding(.horizontal)
        }
        .background {
            Color(.background).ignoresSafeArea()
        }
    }
}

#Preview {
    ForYouView(isSessionAlreadyStarted: .constant(false))
}
