//
//  DesignCodeCourseApp.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 22.04.2021.
//

import SwiftUI
import Firebase

@main
struct DesignCodeCourseApp: App {
    
    init() {
        FirebaseApp.configure()
      }
    
    var body: some Scene {
        WindowGroup {
            TabBar().environmentObject(UserStore())
        }
    }
}
