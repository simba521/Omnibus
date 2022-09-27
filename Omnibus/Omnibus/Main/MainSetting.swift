//
//  MainSetting.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/22.
//

import SwiftUI

struct MainSetting: View {
    var body: some View {

            
            VStack{
                Image("setting")
                    .resizable()
                    .frame(width: 89, height: 89)
                
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: -5, trailing: 0))
                
                Text("설 정")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))

                    
            }
            .frame(width: 150, height: 150)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 4)
    }
}

struct MainSetting_Previews: PreviewProvider {
    static var previews: some View {
        MainSetting()
    }
}

