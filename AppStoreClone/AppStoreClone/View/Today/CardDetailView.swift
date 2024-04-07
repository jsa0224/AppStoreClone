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
                CardView(showDetailView: showDetailView, item: currentItem ?? AppItem(name: "", icon: Image(""), trunail: Image(""), description: "", fullDescription: ""))
                    .scaleEffect(isAnimationView ? 1 : 0.90)

                VStack(spacing: 15, content: {
                    Text(currentItem?.fullDescription ?? "")
                        .multilineTextAlignment(.leading)
                        .lineSpacing(20)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .padding(.horizontal, 25)

                    Divider()

                    Button {

                    } label: {
                        Label {
                            Text("스토리 공유")
                        } icon: {
                            Image(systemName: "square.and.arrow.up")
                        }
                        .foregroundColor(.primary)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 25)
                        .background {
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(.ultraThinMaterial)
                        }
                    }
                    .padding(.bottom, 20)
                })
            }
            .background(.white)
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
        .opacity(showDetailView ? 1 : 0)
    }
}

#Preview {
    CardDetailView(showDetailView: true, isAnimationView: true, currentItem: appItems[0])
}
