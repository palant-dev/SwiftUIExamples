//
//  ContentView.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 07/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForYou()
        }
        .background {
            Color(.background).ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
