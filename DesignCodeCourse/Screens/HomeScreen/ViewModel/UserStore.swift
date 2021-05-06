//
//  UserStore.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 06.05.2021.
//

import SwiftUI
import Combine

final class UserStore: ObservableObject {
    
    @Published var showLogin = false
    @AppStorage("isLogged") var isLogged = false

}
