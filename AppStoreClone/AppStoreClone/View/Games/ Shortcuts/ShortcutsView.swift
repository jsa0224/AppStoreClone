//
//  ShortcutsView.swift
//  AppStoreClone
//
//  Created by 정선아 on 6/18/24.
//

import SwiftUI

struct ShortcutsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("바로가기")
                    .font(.title2.bold())
                
                Spacer()
            }
            .padding([.leading])
            
            List {
                Text("App Store 소개")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                Text("문제 신고")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                Text("어린이용 앱과 게임")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                Text("앱 내 구입 자세히 알아보기")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                Text("지불 방법 변경하기")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                Text("환불정책")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                Text("개인 맞춤화에 대한 정보")
                    .font(.title3)
                    .foregroundStyle(.blue)
                
                VStack(alignment: .leading) {
                    Text("Apple Arcade를 살펴보세요")
                        .font(.title3)
                        .foregroundStyle(.blue)

                    Button {

                    } label: {
                        Text("코드 교환")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                    }
                    .buttonStyle(.bordered)
                    .padding([.top])
                    .padding([.bottom])
                }

            }
            .listStyle(.inset)

            HStack {
                Text("이용 약관 >")
                    .font(.caption)

                Spacer()
            }
            .padding([.leading])

        }
    }
}

#Preview {
    ShortcutsView()
}
