//
//  HomeView.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 26.04.2021.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    @State var showUpdate = false
    @Binding var showContent: Bool
    @EnvironmentObject var user: UserStore
    
    var body: some View {
        GeometryReader { bounds in
            ScrollView {
                VStack {
                    HStack {
                        Text("Watching")
                            .font(.system(size: 28, weight: .bold))
                            .modifier(CustomFontModifier(size: 34))
                        
                        Spacer()
                        
                        AvatarView(showProfile: $showProfile)
                        
                        Button(action: { self.showUpdate.toggle() }) {
                            Image(systemName: "bell")
                                .foregroundColor(.primary)
                                .font(.system(size: 16, weight: .medium))
                                .frame(width: 36, height: 36)
                                .background(Color("background3"))
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0.0, y: 1)
                                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                        }
                        .sheet(isPresented: $showUpdate) {
                            UpdateList()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.leading, 14)
                    .padding(.top, 30)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        WatchRingsView()
                            .padding(.horizontal, 30)
                            .padding(.bottom, 30)
                            .onTapGesture {
                                self.showContent = true
                            }
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(sectionData) { item in
                                GeometryReader { geometry in
                                    SectionView(section: item)
                                        .rotation3DEffect(
                                            .degrees(Double(geometry.frame(in: .global).minX - 30) / -20),
                                            axis: (x: 0.0, y: 10.0, z: 0.0))
                                }
                                .frame(width: 275, height: 275)
                            }
                        }
                        .padding(30)
                        .padding(.bottom, 30)
                    }
                    .offset(y: -30)
                    
                    HStack {
                        Text("Courses")
                            .font(.title).bold()
                        Spacer()
                    }
                    .padding(.leading, 30)
                    .offset(y: -60)
                    
                    SectionView(section: sectionData[2], width: bounds.size.width - 60, height: 275)
                        .offset(y: -60)
                    
                    Spacer()
                }
                .frame(width: bounds.size.width)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false), showContent: .constant(false))
            .environmentObject(UserStore())
    }
}

let sectionData = [Section(title: "Prototype designs in SwiftUI",
                           text: "18 Sections",
                           logo: "Logo1",
                           image: Image("Card1"),
                           color: Color("card1")),
                   Section(title: "Build a SwiftUI app",
                           text: "20 Sections",
                           logo: "Logo1",
                           image: Image(uiImage: #imageLiteral(resourceName: "Background1")),
                           color: Color("card2")),
                   Section(title: "SwiftUI Advanced",
                           text: "20 Sections",
                           logo: "Logo1",
                           image: Image(uiImage: #imageLiteral(resourceName: "Card6")),
                           color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))),
]


