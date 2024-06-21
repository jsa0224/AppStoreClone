//
//  UserProfileImage.swift
//  AppStoreClone
//
//  Created by 정선아 on 5/10/24.
//

import SwiftUI

struct UserProfileImage: View {
    var profileImage: Image

    var body: some View {
        profileImage
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    UserProfileImage(profileImage: Image("유저 프로필"))
}
