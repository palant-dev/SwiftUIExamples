//
//  ViewModel.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 08/10/23.
//

import Foundation

class ViewModel: ObservableObject {
    // MARK: Navigation Logic
    @Published var selectedTabBarItem: SimpleHabitsViews = .forYou
    @Published var detailsModalIsShown: Bool = false



    // MARK: Last session logic
    @Published var isSessionAlreadyStarted = false
    @Published var lastSessionDuration = 176
    @Published var secondsCompletedLastSession = 35
    var lastSessionPercentageToCompletion: Double {
        Double(secondsCompletedLastSession)/Double(lastSessionDuration)
    }

    // MARK: Today status logic
    @Published var amountOfSecondsToday = 0
    @Published var todayTimeGoal = 600
    var todayGoalPercentage: Double {
        amountOfSecondsToday == 0 ? 0.0 : Double(todayTimeGoal) / Double(amountOfSecondsToday)
    }
}
