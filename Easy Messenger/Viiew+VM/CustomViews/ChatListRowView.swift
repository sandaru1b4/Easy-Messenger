//
//  ChatListRowView.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-11-27.
//

import SwiftUI
import SDWebImageSwiftUI

struct ChatListRowView: View {
    
    //MARK: - BODY
    var body: some View {
        
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
            
            VStack(alignment: .leading, spacing: 5) {
                //name
                Text("Danny Hopkins")
                    .foregroundColor(Color.white)
                    .font(.customFont(.PoppinsSemiBold, 15))
                    .lineLimit(1)
                
                //message
                Text(verbatim: "dannylove@gmail.com")
                    .foregroundColor(Color.custom(.HEX_B3B9C9))
                    .font(.customFont(.PoppinsRegular, 14))
                    .lineLimit(1)
            }
            
            Spacer()
        }
        .overlay(
            Text("08:43")
                .foregroundColor(Color.custom(.HEX_B3B9C9))
                .font(.customFont(.PoppinsRegular, 14))
            
            ,alignment: .topTrailing
        )
        .padding(.vertical, 16)
        .padding(.horizontal, 12)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.custom(.HEX_292F3F))
                .shadow(color: Color.black.opacity(0.06), radius: 20, x: 0.0, y: 4.0)
        )
        
    }
    
}

//MARK: - PREVIEW
struct ChatListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListRowView()
    }
}
