//
//  SimpleHabitsApp.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

@main
struct SimpleHabitsApp: App {
    @StateObject private var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(vm: vm)
        }
    }
}
