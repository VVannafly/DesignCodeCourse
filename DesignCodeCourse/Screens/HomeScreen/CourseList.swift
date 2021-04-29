//
//  CourseList.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 29.04.2021.
//

import SwiftUI

struct CourseList: View {
    @State var courses = courseData

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Text("Courses")
                    .font(.largeTitle).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 30)
                
                ForEach(courses.indices, id: \.self) { index in
                    GeometryReader { geometry in
                        CourseView(show: self.$courses[index].show, course: self.courses[index])
                            .offset(y: self.courses[index].show ? -geometry.frame(in: .global).minY : 0)
                    }
                    .frame(height: 280)
                    .frame(maxWidth: self.courses[index].show ? .infinity : screen.width - 60)
                }
            }
            .frame(width: screen.width)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}


var courseData = [
    Course(title: "Prtototype Designs in SwiftUI", subtitle: "18 Sections", image: #imageLiteral(resourceName: "Background1"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), show: false),
    Course(title: "SwiftUI Advanced", subtitle: "20 Sections", image: #imageLiteral(resourceName: "Card3"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), show: false),
    Course(title: "UI Design for Developers", subtitle: "20 Sections", image: #imageLiteral(resourceName: "Card4"), logo: #imageLiteral(resourceName: "Logo3"), color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), show: false)
]
