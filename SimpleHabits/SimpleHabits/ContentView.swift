//
//  ContentView.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: ViewModel

    var body: some View {
        VStack {
            TabView(selection: $vm.selectedTabBarItem ) {
                Group {
                    ForYouView()
                        .tabItem {
                            Label(SimpleHabitsViews.forYou.rawValue, systemImage: "play")
                        }

                    MeditateView()
                        .tabItem {
                            Label(SimpleHabitsViews.meditate.rawValue, systemImage: "circle.dotted")
                        }

                    SleepView()
                        .tabItem {
                            Label(SimpleHabitsViews.sleep.rawValue, systemImage: "moon")
                        }

                    SearchView()
                        .tabItem {
                            Label(SimpleHabitsViews.search.rawValue, systemImage: "magnifyingglass")
                        }
                }
                .toolbarBackground(.black.opacity(0.8), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
            }
        }
        .tint(.white)
    }
}

#Preview {
    ContentView(vm: ViewModel())
}
