//
//  Colors+Extension.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-11-27.
//

import SwiftUI


enum EasyMessengerColors: String {
    
    case HEX_292F3F = "#292F3F"
    case HEX_1B202D = "#1B202D"
    case HEX_B3B9C9 = "#B3B9C9"
    case HEX_390F67 = "#390F67"
    

}

extension Color {
    static func custom( _ name: EasyMessengerColors) -> Color {
        return Color(name.rawValue)
    }
}
