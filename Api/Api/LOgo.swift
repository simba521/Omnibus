//
//  LOgo.swift
//  Api
//
//  Created by 김도현 on 2022/10/19.
//

import SwiftUI

struct LOgo: View {
    var body: some View {
        ZStack {
            Color.blue
            
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color(red: 52 / 255, green: 152 / 255, blue: 219 / 255))
            Circle()
                .frame(width: 100 ,height: 100)
                .foregroundColor(Color.yellow)
        }.background(.black)
    }
}

struct LOgo_Previews: PreviewProvider {
    static var previews: some View {
        LOgo()
    }
}
