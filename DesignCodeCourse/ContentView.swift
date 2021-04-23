//
//  ContentView.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 22.04.2021.
//

import SwiftUI

struct ContentView: View {
    @State var show = false 
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: 20)

            BackCardView()
                .background(Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(10))
                .rotation3DEffect(
                    .degrees(10),
                    axis: (x: 10.0, y: 0.0, z: 0.0))
                .blendMode(.hardLight)

            BackCardView()
                .background(Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
                .rotation3DEffect(
                    .degrees(5),
                    axis: (x: 10.0, y: 0.0, z: 0.0))
                .blendMode(.hardLight)

            CardView()
                .blendMode(.hardLight)

            BottomSheetView()
                .blur(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)

    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Image("Background1")
            Spacer()
        }
    }
}


