//
//  AvatarView.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 26.04.2021.
//

import SwiftUI

struct AvatarView: View {
    @Binding var showProfile: Bool

    var body: some View {
        Button(action: {
            self.showProfile.toggle()
        }) {
            Image("Avatar")
                .renderingMode(.original)
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        }
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(showProfile: .constant(false))
    }
}
