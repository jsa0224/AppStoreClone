//
//  ContentView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/19/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        TabView {
            TodayView(store: Store(initialState: Today.State()) {
                Today()
                    ._printChanges()
            })
                .tabItem {
                    Image("today")
                        .renderingMode(.template)
                    Text("Today")
                }

            Text("Games Tab")
                .tabItem {
                    Image("games")
                        .renderingMode(.template)
                    Text("Games")
                }

            Text("App Tab")
                .tabItem {
                    Image("apps")
                        .renderingMode(.template)
                    Text("App")
                }

            Text("Arcade Tab")
                .tabItem {
                    Image("arcade")
                        .renderingMode(.template)
                    Text("Arcade")
                }

            Text("Search Tab")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

#Preview {
    ContentView()
}
