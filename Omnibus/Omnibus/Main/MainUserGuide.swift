//
//  MainUserGuide.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/22.
//

import SwiftUI

struct MainUserGuide: View {
    var body: some View {

            
            VStack{
                Text("?")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .frame(width: 80, height: 80)
                    .background(Color(red: 36 / 255, green: 71 / 255, blue: 194 / 255))
                    .cornerRadius(100)
                    .foregroundColor(Color.white)
                Text("사용 방법")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    
            }
            .frame(width: 150, height: 150)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 4)
    }
}

