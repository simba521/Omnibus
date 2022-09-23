//
//  ContentView.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color(red: 77 / 255, green: 132 / 255, blue: 190 / 255).ignoresSafeArea()
            VStack {
                MainRiddingBUtton()
                HStack {
                    MainUserGuide()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                    MainSetting()
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            } .padding(EdgeInsets(top: 300, leading: 0, bottom: 0, trailing: 0))
                
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
