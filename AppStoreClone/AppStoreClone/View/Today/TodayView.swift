//
//  TodayView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/20/24.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        NavigationView {
            CardView()
                .navigationTitle("투데이")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {

                        } label: {
                            Image(systemName: "person.circle.fill")
                        }
                    }
                }
            }
        }
}

#Preview {
    TodayView()
}
