//
//  Message.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-12-11.
//

import Foundation


struct Message: Hashable {
    let text: String
    let isFromCurrentUser: Bool
}

