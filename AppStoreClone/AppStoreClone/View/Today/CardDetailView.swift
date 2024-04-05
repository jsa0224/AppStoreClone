//
//  CardDetailView.swift
//  AppStoreClone
//
//  Created by 정선아 on 4/5/24.
//

import SwiftUI

struct CardDetailView: View {
    @State var showDetailView: Bool
    @State var isAnimationView: Bool
    @State var currentItem: AppItem?

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                CardView(showDetailView: showDetailView, item: currentItem ?? AppItem(name: "", icon: Image(""), trunail: Image(""), description: ""))
                    .scaleEffect(isAnimationView ? 1 : 0.90)
            }
            .overlay(alignment: .topTrailing, content: {
                Button {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                        isAnimationView = false
                    }

                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7).delay(0.05)) {
                        currentItem = nil
                        showDetailView = false
                    }
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(.thinMaterial)
                }
                .padding([.top], 30)
                .padding([.trailing], 30)
                .opacity(isAnimationView ? 1 : 0)
            })
            .onAppear() {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                    isAnimationView = true
                }
            }
            .transition(.identity)
        }
    }
}

#Preview {
    CardDetailView(showDetailView: true, isAnimationView: true, currentItem: appItems[0])
}

extension View {
    func safeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }

        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }

        return safeArea
    }
}
