//
//  CourseList.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 29.04.2021.
//

import SwiftUI

struct CourseList: View {
    @State var show = false
    @State var show2 = false

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                CourseView(show: $show)
                GeometryReader { geometry in
                    CourseView(show: self.$show2)
                        .offset(y: self.show2 ? -geometry.frame(in: .global).minY : 0)
                }
                .frame(height: show2 ? screen.height : 280)
                .frame(maxWidth: show2 ? .infinity : screen.width - 60)
            }
            .frame(width: screen.width)
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}


