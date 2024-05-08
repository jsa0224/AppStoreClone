//
//  GameCardView.swift
//  AppStoreClone
//
//  Created by 정선아 on 5/8/24.
//

import SwiftUI
import ComposableArchitecture

struct GameCardView: View {
    @Bindable var store: StoreOf<Games>
    @State var currentItem: AppItem?

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("인기 게임")
                    .foregroundStyle(.blue)
                    .font(.caption)

                Text(store.appCardItem[0].name)
                    .foregroundStyle(.black)
                    .font(.title)

                Text(store.appCardItem[0].description)
                    .font(.title2)
                    .foregroundStyle(.gray)
            }

            ZStack(alignment: .bottom) {
                currentItem?.trunail
                    .resizable()
                    .frame(width: 350, height: 250)

                AppView(currentItem: currentItem)
                    .padding(.top)
                    .padding(.bottom)
                    .background(.thinMaterial.opacity(0.5))
            }
            .frame(width: 350)
            .cornerRadius(10, corner: .allCorners)
        }
    }
}

#Preview {
    GameCardView(store: Store(initialState: Games.State()) {
        Games()
            ._printChanges()
    }, currentItem: AppItem(name: "놀러와 마이홈",
                            icon: Image("놀러와 마이홈 로고"),
                            trunail: Image("놀러와 마이홈 이미지"),
                            description: "너랑 나랑 만드는 달콤한 나의 집! 놀러와 마이홈",
                            fullDescription: ""))
}
