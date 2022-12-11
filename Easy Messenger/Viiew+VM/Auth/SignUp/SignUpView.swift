//
//  SignUpView.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-12-10.
//

import SwiftUI

struct SignUpView: View {
    
    //MARK: - PROPERTIES
    @StateObject var vm = SignUpViewModel()
    
    
    //MARK: - BODY
    var body: some View {
        
        ZStack {
            
            //background
            Color.black.opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 20) {
                        
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                        
                        TextField("Email", text: $vm.email, onCommit: validate)
                            .customTFStyle()
                        
                        SecureField("Password", text: $vm.password, onCommit: validate)
                            .customTFStyle()
                        
                        
                        Button(action: signIn) {
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.custom(.HEX_390F67))
                                .cornerRadius(8.0)
                        }
                    }//VStack
                    .padding(.horizontal, 16)
                    .padding(.top, 50)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            VStack {
                                Text("Sign Up")
                                    .font(.customFont(.PoppinsSemiBold, 28))
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                    
                }//ScrollView
                
                
                //to sign Up
                HStack {
                    Text("Already Have an Account?")
                        .foregroundColor(.white)
                    
                    Button(action: {
                        vm.isSignInActive.toggle()
                    }) {
                        Text("Sign In")
                            .foregroundColor(Color.custom(.HEX_B3B9C9))
                    }
                    
                }
                .font(.customFont(.PoppinsSemiBold, 16))
                .padding(.bottom, 20)
                
                
            }//VStack
        }
        .alert(isPresented: $vm.showAlert) {
            Alert(title: Text("Error"), message: Text("Invalid email or password."))
        }
        .background(
            NavigationLink( destination: SignInView(), isActive: $vm.isSignInActive) {}
        )
    }
    
    
    //MARK: - FUNCTIONS
    
    //sign in action
    func signIn() {
        // Perform sign in with the provided email and password
        validate()
    }
    
    
    //validate textFields
    func validate() {
        if !vm.email.isValidEmail || vm.password.isEmpty {
            vm.showAlert = true
        } else {
            vm.showAlert = false
        }
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
