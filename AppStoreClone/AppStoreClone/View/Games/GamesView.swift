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
        var appListItem: [AppItem] = appListItems
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
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(store.appCardItem) { item in
                    Button {

                    } label: {
                        GameCardView(store: store, currentItem: item)
                            .padding([.leading], 20)
                            .padding([.trailing], 20)
                    }
                }
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
