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

var appCardItems: [AppItem] = [
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
            fullDescription: "촉촉한 감성의 힐링 경영 시뮬레이션 타이쿤." + "\n" + "해가 둥둥 떠 있을때 열리는 작은 식당이 있어요." + "\n" + "레스토랑 이름은 고양이스낵바." + "\n" + "영업시간은 아침 일찍 시작되서 재료가 소진될때까지." + "\n" + "손님은 꽤 많아요!" + "\n" + "\n" + "아메리카노, 카페라떼, 카푸치노 맛 좋은 커피도 내려주고" + "\n" + "팬케이크, 핫도그, 도넛, 스프도 판매해요." + "\n" + "햄버거와 맛있는 피자도 만들어 줄게요." + "\n" + "\n" + "그리고 더 큰 레스토랑 을 열어 손님들에게 음식을 대접하세요." + "\n" + "손님들이 끊이지 않을 거에요." + "\n" + "\n" + "스낵바 매력 탐구!" + "\n" + "\n" + "1. 귀여운 게임, 고양이 집사님들 모이세요!!" + "\n" + "시베리아, 브숏, 랙돌, 놀숲, 뱅갈, 히말라얀, 치즈 등" + "\n" + "귀여움이 뿜뿜하는 우리 냥이들을 찾아보세요." + "\n" + "주문받고, 요리하고, 음식을 식탁 위까지 나르며, 분주하게 움직이고 있을 거예요." + "\n" + "\n" + "2. 코스튬으로 냥이를 이쁘게 꾸며주세요!!" + "\n" + "반려묘에게 입힐 수 없었던 모자, 옷, 악세서리 등," + "\n" + "코스튬을 입혀봐요! 귀여움+1 증가!" + "\n" + "우리 냥이는 물거나 할퀴지 않아요!" + "\n" + "\n" + "3. 스트레스가 사라지는 힐링게임" + "\n" + "사랑스럽고 따뜻한 그림체 + 잔잔한 사운드" + "\n" + "이것은 말 그대로 힐링!" + "\n" + "스낵바와 함께 집, 식당, 학교, 전철, 버스 어느 곳에서건" + "\n" + "잠시나마 힐링 해봐요!" + "\n" + "( 고양이 = 힐링 이죠 ^^ )" + "\n" + "\n" + "4. 쉽다고 소문난 방치형 게임, 2번 하세요!" + "\n" + "게임이 너무나 쉬워서 큰일이예요." + "\n" + "냥이들 스스로 식당을 운영하다니 참 기특해요!" + "\n" + "주문 받고, 요리하고, 음식을 식탁 위 서빙까지~" + "\n" + "집사님은 믿고 쉬세요, 오프라인 방치가 정답입니다." + "\n" + "( 그렇지만, 현실에선 방치금지! 아시죠!? )" + "\n" + "\n" + "이런분들에게 추천합니다!" + "\n" + "- 고양이 게임, 동물 게임을 사랑하시는 분!" + "\n" + "- 음식, 요리, 커피 만드는 것을 좋아하는 분!" + "\n" + "- 식당 게임, 레스토랑 게임 등 타이쿤 장르에 진심인 분!" + "\n" + "- 힐링게임, 방치형 게임, 시뮬레이션 게임을 좋아하는 분!" + "\n" + "- 인터넷 연결이 필요없는 오프라인 게임을 찾으시는 분!" + "\n" + "- 싱글 게임과 무료 게임을 좋아하시는 분!" + "\n" + "\n" + "귀여운 고양이 게임을 찾으시나요?" + "\n" + "그렇다면 이 따끈따끈한 신작게임." + "\n" + "스낵바를 다운받고, 힐링 하세요~" + "\n" + "\n" + "따뜻한 느낌의 고양이스낵바에서 만나요!")
]

var appListItems: [AppItem] = [
    AppItem(name: "헬로키티 스윗파티",
            icon: Image("헬로키티 스윗파티 로고"),
            trunail: Image(""),
            description: "산리오 공식 패션 꾸미기!",
            fullDescription: ""),
    AppItem(name: "고양이와 스프",
            icon: Image("고양이와 스프 로고"),
            trunail: Image(""),
            description: "힐링 고양이 키우기 게임",
            fullDescription: ""),
    AppItem(name: "포레스트 아일랜드",
            icon: Image("포레스트 아일랜드 로고"),
            trunail: Image(""),
            description: "힐링 귀여운 동물 키우기 게임",
            fullDescription: ""),
    AppItem(name: "모닥불 고양이 카페",
            icon: Image("모닥불 고양이 카페 로고"),
            trunail: Image(""),
            description: "귀여운 고양이들과 맛있는 요리를 만들어보세요",
            fullDescription: ""),
    AppItem(name: "듀엣 고양이: 음악 귀여운 게임",
            icon: Image("듀엣 고양이 로고"),
            trunail: Image(""),
            description: "Relaxing Kawaii Music Cat",
            fullDescription: "")
]

var appGamesCardItems: [AppItem] = [
    AppItem(name: "놀러와 마이홈",
            icon: Image("놀러와 마이홈 로고"),
            trunail: Image("놀러와 마이홈 이미지"),
            description: "너랑 나랑 만드는 달콤한 나의 집!",
            fullDescription: ""),
    AppItem(name: "놀러와 마이홈",
            icon: Image("놀러와 마이홈 로고"),
            trunail: Image("놀러와 마이홈 이미지"),
            description: "너랑 나랑 만드는 달콤한 나의 집!",
            fullDescription: ""),
    AppItem(name: "놀러와 마이홈",
            icon: Image("놀러와 마이홈 로고"),
            trunail: Image("놀러와 마이홈 이미지"),
            description: "너랑 나랑 만드는 달콤한 나의 집!",
            fullDescription: "")
]

var appGamesListFirstItems: [AppItem] = [
    AppItem(name: "놀러와 마이홈",
            icon: Image("놀러와 마이홈 로고"),
            trunail: Image("놀러와 마이홈 이미지"),
            description: "너랑 나랑 만드는 달콤한 나의 집!",
            fullDescription: ""),
     AppItem(name: "헬로키티 스윗파티",
             icon: Image("헬로키티 스윗파티 로고"),
             trunail: Image(""),
             description: "산리오 공식 패션 꾸미기!",
             fullDescription: ""),
     AppItem(name: "고양이와 스프",
             icon: Image("고양이와 스프 로고"),
             trunail: Image(""),
             description: "힐링 고양이 키우기 게임",
             fullDescription: "")
]

var appGamesListSecondItems: [AppItem] = [
    AppItem(name: "포레스트 아일랜드",
            icon: Image("포레스트 아일랜드 로고"),
            trunail: Image(""),
            description: "힐링 귀여운 동물 키우기 게임",
            fullDescription: ""),
    AppItem(name: "모닥불 고양이 카페",
            icon: Image("모닥불 고양이 카페 로고"),
            trunail: Image(""),
            description: "귀여운 고양이들과 맛있는 요리를 만들어보세요",
            fullDescription: ""),
    AppItem(name: "듀엣 고양이: 음악 귀여운 게임",
            icon: Image("듀엣 고양이 로고"),
            trunail: Image(""),
            description: "Relaxing Kawaii Music Cat",
            fullDescription: "")
]
