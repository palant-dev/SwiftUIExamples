//
//  ActivityCardProgressionBar.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 09/10/23.
//

import SwiftUI

struct ActivityCardProgressionBar: View {
    var lastSessionCompletionPercentage: Double

    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 8, height: 8), style: .continuous)
            .frame(height: 4)
            .foregroundStyle(.white)
            .overlay {
                GeometryReader { geometry in
                    Rectangle()
                        .frame(width: geometry.size.width * CGFloat(lastSessionCompletionPercentage))
                        .tint(.accent)
                }
            }
    }
}

#Preview {
    ActivityCardProgressionBar(lastSessionCompletionPercentage: 0.3)
}
