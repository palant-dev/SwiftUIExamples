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
}
