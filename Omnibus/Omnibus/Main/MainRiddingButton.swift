//
//  MainRiddingButton.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/22.
//

import SwiftUI

struct MainRiddingBUtton: View {
    var body: some View {
       
        VStack {
            Image("BusIcon")
                .resizable()
                .frame(width: 100, height: 60)
                
            
            Text("타러가기")
                .font(.system(size: 33))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 320, height: 150)
        .background(Color.black)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 4)
    }
}

struct MainRiddingButton_Previews: PreviewProvider {
    static var previews: some View {
        MainRiddingBUtton()
    }
}

