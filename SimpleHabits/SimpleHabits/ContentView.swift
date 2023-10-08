//
//  ContentView.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabbarItem: SimpleHabitsViews = .forYou
    var body: some View {
        VStack {
            TabView(selection: $selectedTabbarItem) {
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
            .toolbarBackground(Color.black, for: .tabBar)
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
    ContentView()
}
