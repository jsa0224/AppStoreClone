//
//  AdView.swift
//  AppStoreClone
//
//  Created by 정선아 on 4/26/24.
//

import SwiftUI

struct AdView: View {
    var body: some View {
        ZStack(alignment: .center) {
            GifImage("쿠키런 광고 영상")
                .opacity(0.3)
                .cornerRadius(15, corner: .allCorners)

            VStack(alignment: .center, spacing: 30) {
                Image("쿠키런 킹덤 로고")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(10, corner: .allCorners)

                HStack {
                    VStack(alignment: .leading) {
                        Text("쿠키런: 킹덤")
                            .bold()

                        Text("처음 '맛'나는 소설 RPG [쿠키런 킹덤]!")
                            .font(.caption)
                    }
                    .padding([.trailing], 50)

                    Button {

                    } label: {
                        Text("받기")
                            .font(.headline)
                            .bold()
                            .frame(width: 70, height: 30)
                            .background(.thinMaterial)
                            .cornerRadius(15)
                    }
                }
            }
            .padding([.top], 10)
            .padding([.bottom], 10)
        }
    }
}

#Preview {
    AdView()
}
