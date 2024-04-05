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
    var description: String
}

var appItems: [AppItem] = [
    AppItem(name: "인스타그램", icon: Image("InstagramLogo"), trunail: Image("Instargram"), description: "콘텐츠에 더욱 가까이")
]
