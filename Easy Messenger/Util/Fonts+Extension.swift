//
//  Fonts+Extension.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-11-27.
//

import SwiftUI

enum EasyMessengerFonts: String {
    
    case PoppinsRegular = "Poppins Regular"
    case PoppinsSemiBold = "Poppins SemiBold"
    case Mulish = "Mulish"
    
}

extension Font {
    static func customFont( _ name: EasyMessengerFonts, _ size: CGFloat) -> Font {
        return Font.custom(name.rawValue, size: size)
    }
}
