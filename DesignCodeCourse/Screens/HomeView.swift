//
//  HomeView.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 26.04.2021.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool

    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))

                Spacer()

                AvatarView(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.top, 30)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(sectionData) { item in
                        SectionView(section: item)
                    }
                }
                .padding(30)
                .padding(.leading, 14)
                .padding(.bottom, 30)
            }
            Spacer()

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false))
    }
}

let sectionData = [Section(title: "Prototype designs in SwiftUI",
                           text: "18 Sections",
                           logo: "Logo1",
                           image: Image("Card1"),
                           color: Color("card1")),
                   Section(title: "Build a SwiftUI app",
                                              text: "20 Sections",
                                              logo: "Logo1",
                                              image: Image(uiImage: #imageLiteral(resourceName: "Background1")),
                                              color: Color("card2")),
                   Section(title: "SwiftUI Advanced",
                                              text: "20 Sections",
                                              logo: "Logo1",
                                              image: Image(uiImage: #imageLiteral(resourceName: "Card6")),
                                              color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))),
]
