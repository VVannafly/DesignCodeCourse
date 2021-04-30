//
//  PostList.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 30.04.2021.
//

import SwiftUI

struct PostList: View {
    @ObservedObject var store = DataStore()

    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8) {
                Text(post.title).font(.system(.title, design: .serif)).bold()
                Text(post.body).font(.subheadline).foregroundColor(.secondary)
            }

        }
    }
}

struct PostList_Preview: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
