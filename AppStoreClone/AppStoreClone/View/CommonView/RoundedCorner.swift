//
//  RoundedCorner.swift
//  AppStoreClone
//
//  Created by 정선아 on 3/27/24.
//

import Foundation
import SwiftUI

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    init(radius: CGFloat, corners: UIRectCorner) {
        self.radius = radius
        self.corners = corners
    }

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius,
                                                    height: radius))

        return Path(path.cgPath)
    }
    

}
