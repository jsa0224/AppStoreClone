//
//  View.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corner: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corner))
    }
}
