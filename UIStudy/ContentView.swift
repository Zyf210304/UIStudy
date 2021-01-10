//
//  ContentView.swift
//  UIStudy
//
//  Created by 亚飞 on 2021/1/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().edgesIgnoringSafeArea(.all).frame(height:300)
            
            CircleImage().offset(y:-130).padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text("河南理工").font(.title)
                    .foregroundColor(Color.green)
                HStack {
                    Text("教育机构").font(.subheadline)
                    Spacer()
                    Text("河南").font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
