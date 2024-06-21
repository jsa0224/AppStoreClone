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
        var gameCategories: [GameCategoryItem] = gameCategoryItems
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
            VStack(spacing: 0) {
                HStack(alignment: .bottom) {
                    Text("게임")
                        .font(.largeTitle.bold())

                    Spacer()

                    UserProfileImage(profileImage: Image("유저 프로필"))
                }
                .padding()

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(store.gameCategories) { game in
                            Button {

                            } label: {
                                HStack {
                                    Image("\(game.name)")
                                        .resizable()
                                        .frame(width: 30, height: 30)

                                    Text("\(game.name)")
                                        .foregroundStyle(.black)
                                }
                            }
                            .buttonStyle(.bordered)
                        }
                    }
                    .scrollTargetLayout()
                }
                .padding([.leading], 20)
                .padding([.trailing], 20)

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
                    .frame(width: 400, height: 280)
                    .padding([.top])

                Divider()
                    .padding([.leading], 28)
                    .padding([.trailing], 28)

                GameListView(title: "꼭 해봐야 할 게임", description: nil, appFirstItems: appGamesListFirstItems, appSecondItems: appGamesListSecondItems)
                    .frame(width: 400, height: 260)
                    .padding([.top])

                Divider()
                    .padding([.leading], 28)
                    .padding([.trailing], 28)

                ShortcutsView()
                    .frame(width: 370, height: 500)
                    .padding([.top])
                    .padding([.bottom])
            }
        }
    }
}

#Preview {
    GamesView(store: Store(initialState: Games.State()) {
        Games()
            ._printChanges()
    })
}
