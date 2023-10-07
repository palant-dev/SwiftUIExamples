//
//  ForYou.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ForYou: View {
    var body: some View {
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
            Text("Continue Listening")
                .foregroundStyle(.white).bold()
                .padding()
            Spacer()
        }

        RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous)
            .foregroundStyle(.gray)
            .padding(.horizontal)

        RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.wellnessScoreCardbg)
            .padding(.horizontal)
    }
}

#Preview {
    ForYou()
}
