//
//  ViewModifiers.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-12-10.
//

import SwiftUI



struct CustomTFStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(.systemGray2))
            .cornerRadius(8.0)
            .shadow(radius: 4)
    }
}


extension View {
    func customTFStyle() -> some View {
        self.modifier(CustomTFStyle())
    }
}


  
