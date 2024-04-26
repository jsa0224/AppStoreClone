//
//  AppItem.swift
//  AppStoreClone
//
//  Created by 정선아 on 4/5/24.
//

import SwiftUI

struct AppItem: Equatable, Identifiable {
    var id = UUID()
    var name: String
    var icon: Image
    var trunail: Image
    var adsTitle: String?
    var adsDescription: String?
    var description: String
    var fullDescription: String
}

var appItems: [AppItem] = [
    AppItem(name: "인스타그램",
            icon: Image("InstagramLogo"),
            trunail: Image("Instargram"),
            adsTitle: "시작하기",
            adsDescription: "콘텐츠에 더욱 가까이",
            description: "작은 순간이 모여 더 깊어지는 우정",
            fullDescription: "친구들과 소통하고 소식을 공유하거나 전 세계에 있는 다른 사람들의 새로운 콘텐츠를 확인하세요. 자유롭게 개성을 드러내고 일상적인 순간부터 삶의 특별한 순간까지 모든 소식을 공유할 수 있는 커뮤니티도 둘러보세요." + "\n" + "자유롭게 표현하고 친구들과 소통하기" + "\n" + "* 24시간 후에 사라지는 스토리에 사진과 동영상을 추가하고, 재미있는 크리에이티브 도구로 스토리에 생동감을 더해보세요." + "\n" + "* Messenger로 친구에게 메시지를 보내보세요. 피드와 스토리에서 본 콘텐츠를 중심으로 대화를 나누고 공유하세요." + "\n" + "* 릴스를 사용하여 Instagram에서 짧고 재미있는 동영상을 만들고 발견하세요." + "\n" + "* 프로필에 표시하고 싶은 사진과 동영상을 피드에 게시해보세요." + "\n" + "관심사에 대해 더 알아보기" + "\n" + "* Instagram 동영상 및 릴스를 통해 좋아하는 크리에이터의 동영상을 시청하고 새로운 콘텐츠를 발견해보세요." + "\n" + "* 다양한 브랜드와 소규모 비즈니스를 발견하고 관심 있는 제품을 구매해보세요." + "\n" + "일부 Instagram 기능은 일부 국가 또는 지역에서만 제공됩니다."),
    AppItem(name: "고양이 스낵바",
            icon: Image("고양이 스낵바 로고"),
            trunail: Image("고양이 스낵바 이미지"),
            adsTitle: "최초 공개",
            adsDescription: "고양이들과 요리를!",
            description: "귀여운 고양이들과 음식을 만들어보세요!",
            fullDescription: "")
]
