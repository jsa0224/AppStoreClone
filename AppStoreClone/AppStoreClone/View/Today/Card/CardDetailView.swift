//
//  CardDetailView.swift
//  AppStoreClone
//
//  Created by 정선아 on 4/5/24.
//

import SwiftUI
import ComposableArchitecture

struct CardDetailView: View {
    @Bindable var store: StoreOf<Today>
    @State var currentItem: AppItem?

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                TodayCardView(store: store, currentItem: currentItem)
                    .scaleEffect(store.isAnimationView ? 1 : 0.90)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)

                VStack(spacing: 15, content: {
                    Text(currentItem?.fullDescription ?? "")
                        .multilineTextAlignment(.leading)
                        .lineSpacing(20)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                        .padding(.horizontal, 25)

                    Divider()

                    Button {

                    } label: {
                        Label {
                            Text("스토리 공유")
                        } icon: {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .foregroundColor(.primary)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 25)
                        .background {
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(.ultraThinMaterial)
                        }
                    }
                    .padding(.bottom, 20)
                })
            }
            .background(.background)
            .overlay(alignment: .topTrailing, content: {
                Button {
                    store.send(.cardDetailViewDisappeared, animation: .interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7))

                    store.send(.cardDetailViewCloseButtonTapped, animation: .interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7).delay(0.05))

                    currentItem = nil
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(.thinMaterial)
                }
                .padding([.top], 30)
                .padding([.trailing], 80)
                .opacity(store.isAnimationView ? 1 : 0)
            })
            .onAppear() {
                store.send(.cardDetailViewOnAppeared, animation: .interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7))
            }
            .transition(.identity)
        }
        .opacity(store.showDetailView ? (currentItem == nil ? 0 : 1) : 0)
    }
}

#Preview {
    CardDetailView(store: Store(initialState: Today.State()) {
        Today()
            ._printChanges()
    }, currentItem: AppItem(name: "고양이 스낵바", icon: Image("고양이 스낵바 로고"), trunail: Image("고양이 스낵바 이미지"), description: "귀여운 고양이들과 음식을 만들어보세요!", fullDescription: ""))
}
