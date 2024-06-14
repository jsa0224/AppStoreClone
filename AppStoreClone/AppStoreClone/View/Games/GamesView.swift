//
//  GamesView.swift
//  AppStoreClone
//
//  Created by 정선아 on 5/8/24.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Games {
    @ObservableState
    struct State: Equatable {
        var showDetailView: Bool = false
        var isAnimationView: Bool = false
        var appCardItem: [AppItem] = appGamesCardItems
        var appListFirstItem: [AppItem] = appGamesListFirstItems
        var appListSecondItem: [AppItem] = appGamesListSecondItems
    }

    enum Action {
        case cardViewTapped
        case cardDetailViewOnAppeared
        case cardDetailViewDisappeared
        case cardDetailViewCloseButtonTapped
    }

    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .cardViewTapped:
                state.showDetailView = true
                return .none

            case .cardDetailViewOnAppeared:
                state.isAnimationView = true
                return .none

            case .cardDetailViewDisappeared:
                state.isAnimationView = false
                return .none

            case .cardDetailViewCloseButtonTapped:
                state.showDetailView = false
                return .none
            }
        }
    }
}

struct GamesView: View {
    @Bindable var store: StoreOf<Games>

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack(alignment: .bottom) {
                Text("게임")
                    .font(.largeTitle.bold())

                Spacer()

                UserProfileImage(profileImage: Image("유저 프로필"))
            }
            .padding()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(store.appCardItem) { item in
                        Button {

                        } label: {
                            GameCardView(store: store, currentItem: item)
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(25, for: .scrollContent)
            .scrollTargetBehavior(.viewAligned)

            Divider()
                .padding([.leading], 28)
                .padding([.trailing], 28)

            GameListView(title: "에디터도 플레이 중", description: "요즘 우리가 푹 빠진 게임들", appFirstItems: appGamesListFirstItems, appSecondItems: appGamesListSecondItems)
                .frame(width: 400, height: 300)
                .padding([.top])

            Divider()
                .padding([.leading], 28)
                .padding([.trailing], 28)

            GameListView(title: "꼭 해봐야 할 게임", description: nil, appFirstItems: appGamesListFirstItems, appSecondItems: appGamesListSecondItems)
                .frame(width: 400, height: 300)
                .padding([.top])
        }
    }
}

#Preview {
    GamesView(store: Store(initialState: Games.State()) {
        Games()
            ._printChanges()
    })
}
