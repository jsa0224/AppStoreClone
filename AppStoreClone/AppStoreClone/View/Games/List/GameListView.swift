//
//  EditorListView.swift
//  AppStoreClone
//
//  Created by 정선아 on 6/12/24.
//

import SwiftUI

struct GameListView: View {
    @State var title: String
    @State var description: String?
    @State var appFirstItems: [AppItem]
    @State var appSecondItems: [AppItem]

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title2.bold())
                    if description != nil {
                        Text(description ?? "")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
                .padding([.leading], 30)

                Spacer()

                Button {

                } label: {
                    Text("모두 보기")
                }
                .padding([.trailing], 30)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    List {
                        ForEach(appFirstItems) { item in
                            AppView(currentItem: item)
                                .frame(width: 400)
                        }
                    }
                    .listStyle(.inset)
                    .frame(width: 400)
                    .scrollDisabled(true)

                    List {
                        ForEach(appSecondItems) { item in
                            AppView(currentItem: item)
                                .frame(width: 400)
                        }
                    }
                    .listStyle(.inset)
                    .frame(width: 400)
                    .scrollDisabled(true)
                }
            }
        }
    }
}

#Preview {
    GameListView(title: "에디터도 플레이 중", description: "요즘 우리가 푹 빠진 게임들", appFirstItems: appGamesListFirstItems, appSecondItems: appGamesListSecondItems)
}
