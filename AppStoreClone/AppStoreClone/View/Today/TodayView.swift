//
//  TodayView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/20/24.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct Today {
    @ObservableState
    struct State: Equatable {
        var showDetailView: Bool = false
        var isAnimationView: Bool = false
        var appCardItem: [AppItem] = appCardItems
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

struct TodayView: View {
    @Bindable var store: StoreOf<Today>
    @State var currentItem: AppItem?
    @Namespace var animation

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30, content: {
                HStack(alignment: .top, content: {
                    HStack(alignment: .bottom, spacing: 8, content: {
                        Text("투데이")
                            .font(.largeTitle)
                            .bold()

                        Text("4월 5일")
                            .font(.title3.bold())
                            .opacity(0.8)
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)

                    UserProfileImage(profileImage: Image("유저 프로필"))
                })
                .padding(.horizontal)
                .padding([.leading], 20)
                .padding([.trailing], 20)
                .opacity(store.isAnimationView ? 0 : 1)
            })

            Button {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                    currentItem = store.appCardItem[0]
                    store.send(.cardViewTapped)
                }
            } label: {
                TodayCardView(store: store, currentItem: store.appCardItem[0])
                    .multilineTextAlignment(.leading)
                    .padding([.leading], 30)
                    .padding([.trailing], 30)
            }
            .buttonStyle(ScaledButtonStyle())
            .opacity(store.showDetailView ? (currentItem?.id == store.appCardItem[0].id ? 1 : 0) : 1)
            .padding()

            AdView()
                .padding([.leading], 30)
                .padding([.trailing], 30)
                .padding()

            TodayListView(store: store)
                .frame(height: 480)
                .padding([.leading], 30)
                .padding([.trailing], 30)
                .padding()

            Button {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                    currentItem = store.appCardItem[1]
                    store.send(.cardViewTapped)
                }
            } label: {
                TodayCardView(store: store, currentItem: store.appCardItem[1])
                    .multilineTextAlignment(.leading)
                    .padding([.leading], 30)
                    .padding([.trailing], 30)
            }
            .buttonStyle(ScaledButtonStyle())
            .opacity(store.showDetailView ? (currentItem?.id == store.appCardItem[1].id ? 1 : 0) : 1)
            .padding()
        }
        .padding(.vertical)
        .background(.thickMaterial)
        .overlay {
            if store.showDetailView {
                CardDetailView(store: store, currentItem: currentItem)
                    .edgesIgnoringSafeArea(.top)
            }
        }
    }
}

#Preview {
    TodayView(store: Store(initialState: Today.State()) {
        Today()
            ._printChanges()
    })
}
