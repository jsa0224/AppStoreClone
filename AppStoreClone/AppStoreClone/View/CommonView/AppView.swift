//
//  AppView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import SwiftUI

struct AppView: View {
    @State var currentItem: AppItem?

    var body: some View {
        HStack {
            HStack{
                currentItem?.icon
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10, corner: .allCorners)

                VStack(alignment: .leading) {
                    Text(currentItem?.name ?? "")
                        .bold()
                    Text(currentItem?.description ?? "")
                        .font(.caption)
                        .lineLimit(1)
                }
            }
            .padding([.trailing], 20)

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
        .padding([.leading], 10)
        .padding([.trailing], 10)
    }
}

#Preview {
    AppView(currentItem: AppItem(name: "고양이 스낵바", icon: Image("고양이 스낵바 로고"), trunail: Image("고양이 스낵바 이미지"), description: "귀여운 고양이들과 음식을 만들어보세요!", fullDescription: ""))
}
