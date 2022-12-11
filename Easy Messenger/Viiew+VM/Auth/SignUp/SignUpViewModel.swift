//
//  SignUpViewModel.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-12-10.
//

import Foundation


class SignUpViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showAlert = false
    @Published var isSignInActive = false
}
