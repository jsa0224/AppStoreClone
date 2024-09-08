//
//  SearchListView.swift
//  AppStoreClone
//
//  Created by 정선아 on 7/31/24.
//

import SwiftUI

struct SearchListView: View {
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
                .padding([.leading], 20)

                Spacer()

                Button {

                } label: {
                    Text("모두 보기")
                }
                .padding([.trailing], 20)
            }


            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    List {
                        ForEach(appFirstItems) { item in
                            AppView(currentItem: item)
                                .frame(width: 420)
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
    SearchListView(title: "추천 앱과 게임", description: nil, appFirstItems: appGamesListFirstItems, appSecondItems: appGamesListSecondItems)
}
