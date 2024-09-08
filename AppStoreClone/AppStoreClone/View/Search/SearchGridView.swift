//
//  SearchGridView.swift
//  AppStoreClone
//
//  Created by 정선아 on 7/31/24.
//

import SwiftUI

struct SearchGridView: View {
    var body: some View {
        VStack {
            HStack {
                Text("둘러보기")
                    .font(.title2.bold())

                Spacer()

                Button {

                } label: {
                    Text("모두 보기")
                }
            }
            .padding()


            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: 180, height: 100)
                        .cornerRadius(10, corner: .allCorners)

                    Text("인기 게임")
                        .foregroundStyle(.white)
                        .padding([.top], 60)
                        .padding([.trailing], 90)
                }

                Spacer()

                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 180, height: 100)
                        .cornerRadius(10, corner: .allCorners)

                    Text("인기 앱")
                        .foregroundStyle(.white)
                        .padding([.top], 60)
                        .padding([.trailing], 100)
                }
            }
            .padding()
        }
    }
}

#Preview {
    SearchGridView()
}
