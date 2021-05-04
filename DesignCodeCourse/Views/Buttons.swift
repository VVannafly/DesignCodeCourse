//
//  Buttons.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 04.05.2021.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack {
            Text("Button")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .background(
                    ZStack {
                        Color(#colorLiteral(red: 0.761, green: 0.816, blue: 0.9259157777, alpha: 1))
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(
                                        colors: [Color(#colorLiteral(red: 0.761, green: 0.816, blue: 0.9259157777, alpha: 1)), Color.white]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)
                            )
                            .padding(2)
                            .blur(radius: 2)
                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.761, green: 0.816, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.761, green: 0.816, blue: 0.9259157777, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}


struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
