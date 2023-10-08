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
                ForYouView()
                    .tabItem {
                        Label(SimpleHabitsViews.forYou.rawValue, systemImage: "play")
                    }

                MeditateView()
                    .tabItem {
                        Label(SimpleHabitsViews.meditate.rawValue, systemImage: "circle")
                    }

                SleepView()
                    .tabItem {
                        Label(SimpleHabitsViews.sleep.rawValue, systemImage: "moon")
                    }

                SearchView()
                    .tabItem {
                        Label(SimpleHabitsViews.search.rawValue, systemImage: "play")
                    }
                    .toolbarBackground(Color.black, for: .tabBar)
            }
        }
    }
}

enum SimpleHabitsViews: String {
    case forYou = "For You",
         meditate = "Meditate",
         sleep = "Sleep",
         search = "Search"
}

#Preview {
    ContentView(vm: ViewModel())
}
