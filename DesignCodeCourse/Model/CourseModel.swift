//
//  CourseModel.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 29.04.2021.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: UIImage
    var logo: UIImage
    var color: UIColor
    var show: Bool
}
