//
//  UpdateStore.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 27.04.2021.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
