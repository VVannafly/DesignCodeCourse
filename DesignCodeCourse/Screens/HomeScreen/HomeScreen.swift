//
//  HomeView.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 26.04.2021.
//

import SwiftUI

struct HomeScreen: View {
    @State var showProfile = false
    @State var viewState = CGSize.zero
    @State var showContent = false
    @EnvironmentObject var user: UserStore
    
    var body: some View {
        ZStack {
            Color("background2")
                .edgesIgnoringSafeArea(.all)
            
            HomeBackgroundView(showProfile: $showProfile)
                .offset(y: showProfile ? -450 : 0)
                .rotation3DEffect(
                    .degrees(showProfile ? Double(viewState.height / 10) - 10 : 0),
                    axis: (x: 10.0, y: 0, z: 0.0))
                .scaleEffect(showProfile ? 0.9 : 1)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .edgesIgnoringSafeArea(.all)
            
//            TabView {
                HomeView(showProfile: $showProfile, showContent: $showContent, viewState: $viewState)
//                    .tabItem {
//                        Image(systemName: "play.circle.fill")
//                        Text("Home")
//                    }
//            }
            
            
            MenuView(showProfile: $showProfile)
                .background(Color.black.opacity(0.001))
                .offset(y: showProfile ? 0 : screen.height)
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .gesture(DragGesture().onChanged{ value in
                    self.viewState = value.translation
                }
                .onEnded{ value in
                    if self.viewState.height > 50 {
                        self.showProfile = false
                    }
                    self.viewState = .zero
                    
                }
                )
            
            if user.showLogin {
                ZStack {
                    LoginView()
                    
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "xmark")
                                .frame(width: 36, height: 36)
                                .foregroundColor(Color(.systemBackground))
                                .background(Color.primary)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    .padding()
                    .onTapGesture {
                        self.user.showLogin = false
                    }
                }
            }
            
            if showContent {
                BlurView(style: .systemMaterial).edgesIgnoringSafeArea(.all)
                
                ContentView()
                
                
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "xmark")
                            .frame(width: 36, height: 36)
                            .foregroundColor(Color(.systemBackground))
                            .background(Color.primary)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                .offset(x: -16, y: 16)
                .transition(.move(edge: .top))
                .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                .onTapGesture {
                    self.showContent = false
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environment(\.colorScheme, .dark)
            .environmentObject(UserStore())
    }
}

let screen = UIScreen.main.bounds


struct HomeBackgroundView: View {
    @Binding var showProfile: Bool
    
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(
                            colors: [Color("background2"), Color("background1")]),
                           startPoint: .top,
                           endPoint: .bottom)
                .frame(height: 200)
            Spacer()
        }
        .background(Color("background1"))
        .clipShape(RoundedRectangle(cornerRadius: showProfile ? 30 : 0, style: .continuous))
        .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
    }
}
