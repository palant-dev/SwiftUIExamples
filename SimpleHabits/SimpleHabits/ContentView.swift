//
//  ContentView.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTabbarItem = "For You"
    var body: some View {
        VStack {


            TabView(selection: $selectedTabbarItem) {
                ForYouView()
                    .tabItem {
                        VStack{
                            Image(systemName: "play")
                            Text("For you")
                        }

                    }

                MeditateView()
                    .tabItem {
                        VStack{
                            Image(systemName: "circle")
                            Text("For you")
                        }
                    }

                SleepView()
                    .tabItem {
                        VStack{
                            Image(systemName: "moon")
                            Text("For you")
                        }
                    }

                SearchView()
                    .tabItem {
                        VStack{
                            Image(systemName: "play")
                            Text("For you")
                        }
                    }
            }
            .toolbarBackground(Color.black, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
