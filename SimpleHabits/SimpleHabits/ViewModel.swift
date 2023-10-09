//
//  ViewModel.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 08/10/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var selectedTabBarItem: SimpleHabitsViews = .forYou
    @Published var isSessionAlreadyStarted = false

    var lastSessionDuration = 176
    var secondsCompletedLastSession = 35

    var lastSessionPercentageToCompletion: Double {
        Double(secondsCompletedLastSession)/Double(lastSessionDuration)
    }
}
