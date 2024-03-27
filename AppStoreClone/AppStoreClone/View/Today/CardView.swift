//
//  CardView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Spacer()
            Spacer()

            VStack(alignment: .leading, spacing: 5) {
                Text("시작하기")
                    .font(.body)
                    .bold()
                    .foregroundColor(.white)
                Text("소중한 사람들과" + "\n" + "콘텐츠에 더욱 가까이")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
            }

            AppView()
            Spacer()
        }
        .background(
            ZStack(alignment: .bottom) {
                Image("Instargram")
                    .resizable()
                    .frame(width: 350, height: 500)
                    .scaledToFit()
                    .cornerRadius(15)
                Text("")
                    .frame(width: 350, height: 75)
                    .background(.thinMaterial)
                    .cornerRadius(15, corner: .bottomLeft)
                    .cornerRadius(15, corner: .bottomRight)
            }
        )
    }
}

#Preview {
    CardView()
}
