//
//  SignInViewModel.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-12-10.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    //MARK: - PROPERTIES
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showAlert = false
    
}



extension SignInViewModel {
    
    //MARK: - FUNCTIOMS
    func signIn() {
        
    }
    
}

