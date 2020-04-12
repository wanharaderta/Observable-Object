//
//  ContentView.swift
//  Observable Object
//
//  Created by Wanhar on 12/04/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userSerttings = UserSettings()
    
    var body: some View {
        
        VStack {
            Text("\(userSerttings.score)")
                .font(.title)
            Button("Increment Score"){
                self.userSerttings.score += 1
            }.padding(16)
                .foregroundColor(.green)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
