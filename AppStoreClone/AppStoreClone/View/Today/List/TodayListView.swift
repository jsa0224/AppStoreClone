//
//  ListView.swift
//  AppStoreClone
//
//  Created by 정선아 on 5/1/24.
//

import SwiftUI
import ComposableArchitecture

struct TodayListView: View {
    @Bindable var store: StoreOf<Today>

    var body: some View {
        List {
            VStack(alignment: .leading) {
                Text("추천")
                    .font(.callout)
                    .foregroundStyle(.gray)
                    .bold()
                Text("에디터도 플레이 중")
                    .font(.title)
                    .bold()
            }
            .padding([.top])

            ForEach(store.appItem) { item in
                AppView(currentItem: item)
                    .frame(width: 350)
                    .listRowSeparator(.hidden)

            }
        }
        .listStyle(.inset)
        .cornerRadius(15, corner: .allCorners)
    }
}

#Preview {
    TodayListView(store: Store(initialState: Today.State()) {
        Today()
            ._printChanges()
    })
}
