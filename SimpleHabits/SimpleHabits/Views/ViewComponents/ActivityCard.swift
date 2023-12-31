//
//  ActivityCard.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 09/10/23.
//

import SwiftUI

struct ActivityCard: View {
    @Binding var isModalShown: Bool

    var isActivityStarted: Bool
    var lastSessionCompletionPercentage: Double


    var body: some View {
        Button {
            isModalShown.toggle()
        } label: {
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous)
                    .foregroundStyle(.black)
                    .overlay {
                        GeometryReader { geometry in
                            Image("demo-meditation")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width)

                            LinearGradient(gradient: Gradient(colors: [.clear,.black.opacity(0.4)]), startPoint: .init(x: 0, y: 0), endPoint: .init(x: 0, y:0.9))
                        }
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous))
                    }

                HStack {
                    VStack(alignment: .leading) {
                        Text("Antonio's starter")
                            .font(.title.bold())
                            .foregroundStyle(.white)

                        Text("5 mins · Meditation")
                            .foregroundStyle(.white)
                        if isActivityStarted {
                            ActivityCardProgressionBar(lastSessionCompletionPercentage: lastSessionCompletionPercentage)
                        }
                    }

                    Spacer()
                    Button {
#warning("Add logic for play button of last session card")
                    } label: {
                        Circle()
                            .frame(width: 50)
                            .foregroundStyle(.accent)
                            .overlay {
                                Image(systemName: "play")
                                    .font(.title2)
                                    .foregroundStyle(.white)
                            }
                    }

                }
                .padding(.horizontal)
                .padding(.vertical)
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $isModalShown, content: {
            LastSessionDetailsView()
        })
    }
}

#Preview {
    ActivityCard(isModalShown: .constant(true), isActivityStarted: true, lastSessionCompletionPercentage: 0.3)
}
