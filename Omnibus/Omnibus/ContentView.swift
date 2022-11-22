//
//  ContentView.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.white.ignoresSafeArea()
                VStack {
                    
                    Logo()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 120, trailing: 0))
                    
                    NavigationLink(destination: BusMainView()){
                        MainRiddingBUtton()
                            .foregroundColor(Color.black)
                    }
                    HStack {
                        MainUserGuide()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        MainSetting()
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                }
   
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
