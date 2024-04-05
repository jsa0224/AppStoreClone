//
//  CardView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import SwiftUI

struct CardView: View {
    @State var showDetailView: Bool
    @State var item: AppItem
    @Namespace var animation

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .bottom) {
                Image("Instargram")
                    .resizable()
                    .frame(height: 450)
                    .scaledToFit()
                    .cornerRadius(15)
                Text("")
                    .frame(width: showDetailView ? 400 : 350, height: 75)
                    .background(.thinMaterial)
                    .cornerRadius(showDetailView ? 0 : 15, corner: .bottomLeft)
                    .cornerRadius(showDetailView ? 0 : 15, corner: .bottomRight)
            }

            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading ,spacing: 5) {
                    Text("시작하기")
                        .bold()
                        .foregroundColor(.white)
                    Text("콘텐츠에 더욱 가까이")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }

                AppView()
                    .padding([.bottom], 15)
            }
        }
        .matchedGeometryEffect(id: item.id, in: animation)
    }
}


#Preview {
    CardView(showDetailView: true, item: appItems[0])
}

struct ScaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.90 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
