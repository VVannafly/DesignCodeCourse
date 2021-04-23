//
//  BottomSheet.swift
//  DesignCodeCourse
//
//  Created by Dmitriy Chernov on 23.04.2021.
//

import SwiftUI

struct BottomSheetView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)

            Text("This certificate is proof that Meng To has achieved the UI Design course with approval from a Design+Code instructor.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)

            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: (20))
        .offset(x: 0, y: 500)
    }
}
struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
