//
//  GameCategoryItem.swift
//  AppStoreClone
//
//  Created by 정선아 on 6/18/24.
//

import Foundation

struct GameCategoryItem: Equatable, Identifiable {
    var id = UUID()
    let name: String
}

var gameCategoryItems: [GameCategoryItem] = [
    GameCategoryItem(name: "캐주얼"),
    GameCategoryItem(name: "롤플레잉"),
    GameCategoryItem(name: "액션"),
    GameCategoryItem(name: "시뮬레이션"),
    GameCategoryItem(name: "전략"),
    GameCategoryItem(name: "가족"),
    GameCategoryItem(name: "어린이"),
    GameCategoryItem(name: "어드벤처"),
    GameCategoryItem(name: "퍼즐"),
    GameCategoryItem(name: "AR 게임"),
    GameCategoryItem(name: "레이싱"),
    GameCategoryItem(name: "퀴즈"),
    GameCategoryItem(name: "단어"),
    GameCategoryItem(name: "보드"),
    GameCategoryItem(name: "카드"),
    GameCategoryItem(name: "카지노"),
    GameCategoryItem(name: "음악"),
    GameCategoryItem(name: "스포츠"),
    GameCategoryItem(name: "인디")
]
