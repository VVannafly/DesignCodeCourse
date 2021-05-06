//
//  TabBar.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 27.04.2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeScreen().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            CourseList().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            TabBar().previewDevice("iPhone 8")
            TabBar()
        }

    }
}
