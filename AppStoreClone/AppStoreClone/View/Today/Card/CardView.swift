//
//  CardView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import SwiftUI
import ComposableArchitecture

struct CardView: View {
    @Bindable var store: StoreOf<Today>
    @State var currentItem: AppItem?
    @Namespace var animation

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .bottom) {
                currentItem?.trunail
                    .resizable()
                    .frame(height: 450)
                    .scaledToFit()
                    .cornerRadius(15)
                Text("")
                    .frame(width: store.showDetailView ? 400 : 350, height: 75)
                    .background(.thinMaterial)
                    .cornerRadius(store.showDetailView ? 0 : 15, corner: .bottomLeft)
                    .cornerRadius(store.showDetailView ? 0 : 15, corner: .bottomRight)
            }

            VStack(alignment: .leading) {
                VStack(alignment: .leading ,spacing: 5) {
                    Text(currentItem?.adsTitle ?? "")
                        .bold()
                        .foregroundColor(.white)
                    Text(currentItem?.adsDescription ?? "")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding([.leading], 10)

                AppView(currentItem: currentItem)
                    .padding([.bottom], 15)
            }
        }
        .matchedGeometryEffect(id: currentItem?.id, in: animation)
    }
}

struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.90 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}

#Preview {
    CardView(store: Store(initialState: Today.State()) {
        Today()
            ._printChanges()
    }, currentItem: AppItem(name: "고양이 스낵바",
                            icon: Image("고양이 스낵바 로고"),
                            trunail: Image("고양이 스낵바 이미지"),
                            adsTitle: "최초 공개",
                            adsDescription: "고양이들과 요리를!",
                            description: "귀여운 고양이들과 음식을 만들어보세요!",
                            fullDescription: ""))
}
