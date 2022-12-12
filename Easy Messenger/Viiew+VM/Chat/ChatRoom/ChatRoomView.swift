//
//  ChatRoomView.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-12-11.
//

import SwiftUI
import SDWebImageSwiftUI

struct ChatRoomView: View {
    
    //MARK: -PROPOERTIES
    @State private var newMessageText = ""
    let messages: [Message] = [
        Message(text: "Hey, how's it going?", isFromCurrentUser: false),
        Message(text: "I'm doing well, thanks for asking! How about you?", isFromCurrentUser: true),
        Message(text: "I'm doing well too. Just enjoying a nice chat in this SwiftUI app.", isFromCurrentUser: false),
        Message(text: "That's great! SwiftUI makes it really easy to build beautiful and user-friendly apps.", isFromCurrentUser: true)
    ]
    
    
    //MARK: - BODY
    var body: some View {
        
        VStack {
            
            
            HStack(spacing: 18) {
                //profile picture
                WebImage(url: URL(string: "https://picsum.photos/seed/picsum/200/300"))
                    .resizable()
                    .placeholder {
                        Rectangle().foregroundColor(Color.gray)
                    }
                    .indicator {_,_ in
                        ProgressView()
                    }
                    .frame(width: 52, height: 52)
                    .scaledToFill()
                    .clipShape(Circle())
                
                //name
                Text("Danny Hopkins")
                    .foregroundColor(Color.white)
                    .font(.customFont(.PoppinsSemiBold, 15))
                    .lineLimit(1)
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 10)
            
            
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    ForEach(messages, id: \.self) { message in
                        HStack {
                            if message.isFromCurrentUser {
                                Spacer()
                                Text(message.text)
                                    .padding()
                                    .background(Color.custom(.HEX_292F3F))
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                            } else {
                                
                                Text(message.text)
                                    .padding()
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }//HStack
                    }
                }//VStack
                .padding(.horizontal, 16)
                .padding(.vertical, 30)
            }//ScrollView
            
            
            //new message send
            HStack {
                TextField("Enter your message here", text: $newMessageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: sendMessage) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        .foregroundColor(.blue)
                }
            }
            .padding(16)
    
    
}//VStack
    .background(Color.custom(.HEX_1B202D).ignoresSafeArea())

}


//MARK: - FUNCTIONS
func sendMessage() {
    //
}


}


//MARK: - PREVIEW
struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}


