//
//  AppView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        HStack {
            Image("InstagramLogo")
                .resizable()
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text("인스타그램")
                    .bold()
                Text("소중한 사람들과 콘텐츠에 더욱 가까이")
                    .font(.caption)
            }

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
}

#Preview {
    AppView()
}
