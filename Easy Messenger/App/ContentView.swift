//
//  ContentView.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-11-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    init() {
        UINavigationBar.appearance().barTintColor = .clear
    }
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            
            ChatListView()
            
        }
    }
}


//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
