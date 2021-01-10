//
//  PeropertyWrapperView.swift
//  UIStudy
//
//  Created by 亚飞 on 2021/1/8.
//

import SwiftUI

//extension UserDefaults {
//
//    public enum Keys {
//        static let hadShowUserGuide = "hadShowUserGuide"
//    }
//
//    var hasShowUserGuide : Bool {
//        set {
//            setValue(newValue, forKey: Keys.hadShowUserGuide)
//        }
//        get {
//            bool(forKey: Keys.hadShowUserGuide)
//        }
//    }
//
//
//}

@propertyWrapper
struct UserDefaultsWrapper<T> {
    
    var key : String
    var defaultValue : T
    
    init(_ key: String, defaultValue : T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue : T {
        get {
            return UserDefaults.standard.value(forKey: key) as? T ?? defaultValue
        }
        set  {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
}



struct PeropertyWrapperView: View {
    
    @UserDefaultsWrapper("hadShowUserGuide", defaultValue: false)
    static var hadShowUserGuide: Bool
    
    @State private var num = 111
    
    @State private var showText = PeropertyWrapperView.hadShowUserGuide ? "已经展示121" : "没有展示过"
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Button( action: {
                    if(!PeropertyWrapperView.hadShowUserGuide) {
                        PeropertyWrapperView.hadShowUserGuide = true
                    }
                    self.showText = "已经展示过点击过\(self.num)次"
                    self.num = self.num + 1
                }, label: {
                    Text(self.showText)
            })
                Button(action: {
                    self.num = self.num + 1
                }) {
                    Text("点击")
                        .padding()
                }
            }
            .navigationTitle("练习")
        }
        
        
    }
    
    mutating func buttonDidTouch() {
        
    }
}






struct PeropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PeropertyWrapperView()
    }
}
