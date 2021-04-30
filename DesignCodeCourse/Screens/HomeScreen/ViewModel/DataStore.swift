//
//  DataStore.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 30.04.2021.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []

    init() {
        getPosts()
    }

    func getPosts() {
        Api().getPosts { posts in
            self.posts = posts
        }
    }
}
