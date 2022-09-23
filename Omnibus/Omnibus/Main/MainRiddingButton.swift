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
            Image("bus")
                .resizable()
                .frame(width: 100, height: 60)
            
            Text("버스 타러가기")
                .font(.system(size: 33))
                .fontWeight(.bold)
        }
        .frame(width: 320, height: 150)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct MainRiddingButton_Previews: PreviewProvider {
    static var previews: some View {
        MainRiddingBUtton()
    }
}

