//
//  ContentView.swift
//  Easy Messenger
//
//  Created by Achitha Sandaruwan on 2022-11-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - BODY
    var body: some View {
        
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world!")
            
        }
        .padding()
    }
}


//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
