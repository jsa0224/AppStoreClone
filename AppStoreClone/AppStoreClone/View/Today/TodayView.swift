//
//  TodayView.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/20/24.
//

import SwiftUI

struct TodayView: View {
    @State var showDetailView: Bool = false
    @State var isTransition: Bool = false
    @State var isAnimationView: Bool = false
    @State var appItems: [AppItem]
    @State var currentItem: AppItem?
    @Namespace var animation

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30, content: {
                HStack(alignment: .top, content: {
                    HStack(alignment: .bottom, spacing: 8, content: {
                        Text("투데이")
                            .font(.title.bold())

                        Text("4월 5일")
                            .font(.title3.bold())
                            .opacity(0.8)
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                })
                .padding(.horizontal)
                .padding()
                .opacity(isAnimationView ? 0 : 1)
            })

            ForEach(appItems) { item in
                Button {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                        currentItem = item
                        showDetailView.toggle()
                    }
                } label: {
                    CardView(showDetailView: showDetailView, item: item, animation: _animation)
                        .multilineTextAlignment(.leading)
                        .padding([.leading], 30)
                        .padding([.trailing], 30)
                }
                .buttonStyle(ScaledButtonStyle())
                .opacity(showDetailView ? (currentItem?.id == item.id ? 1 : 0) : 1)
            }
        }
        .padding(.vertical)
        .overlayIf (
            showDetailView,
                CardDetailView(showDetailView: showDetailView, isAnimationView: isAnimationView, currentItem: currentItem)
                    .edgesIgnoringSafeArea(.top)
        )
    }
}

#Preview {
    TodayView(appItems: appItems)
}

extension View {
  @ViewBuilder public func overlayIf<T: View>(
    _ condition: Bool,
    _ content: T
  ) -> some View {
    if condition {
      self.overlay(content)
    } else {
      self
    }
  }
}
