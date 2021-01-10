//
//  CircleImage.swift
//  UIStudy
//
//  Created by 亚飞 on 2021/1/8.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("lgd")
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
