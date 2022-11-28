//
//  ChatListView.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-11-27.
//

import SwiftUI

struct ChatListView: View {
    
    //MARK: - BODY
    var body: some View {
        
        
        ScrollView {
            
            VStack(spacing: 10) {
                
                ForEach(0..<10) { _ in
                    
                    ChatListRowView()
                    
                }
                
            }//VStack
            .padding(.vertical, 24)
            .padding(.horizontal, 15)
            
        }//Scroll
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                VStack {
                    Text("Messages")
                        .font(.customFont(.PoppinsSemiBold, 28))
                        .foregroundColor(Color.white)
                }
            }
        }
        .background(Color.custom(.HEX_1B202D).ignoresSafeArea())
        
    }
    
}

//MARK: - PREVIEW
struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}
