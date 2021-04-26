//
//  SectionModel.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 26.04.2021.
//

import SwiftUI

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}
