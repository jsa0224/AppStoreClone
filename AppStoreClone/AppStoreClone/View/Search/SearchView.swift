//
//  SearchView.swift
//  AppStoreClone
//
//  Created by 정선아 on 7/31/24.
//

import SwiftUI

struct SearchView: View {
    @State var text: String

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack(alignment: .bottom) {
                    Text("검색")
                        .font(.largeTitle.bold())

                    Spacer()

                    UserProfileImage(profileImage: Image("유저 프로필"))
                }
                .padding()

                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")

                        TextField("게임, 앱, 스토리 등", text: $text)
                            .foregroundColor(.primary)

                        Image(systemName: "mic.fill")

                        if !text.isEmpty {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                            }
                        } else {
                            EmptyView()
                        }
                    }
                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                    .foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10.0)
                }
                .padding(.horizontal)

                SearchGridView()
                    .frame(width: 400, height: 100)
                    .padding([.top], 60)

                SearchListView(title: "추천 앱과 게임", description: nil, appFirstItems: appGamesListFirstItems, appSecondItems: appGamesListSecondItems)
                    .frame(width: 400, height: 280)
                    .padding([.top], 60)
            }
        }
    }
}

#Preview {
    SearchView(text: "")
}
