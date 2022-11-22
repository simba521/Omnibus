//
//  Logo.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/28.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color(red: 52 / 255, green: 152 / 255, blue: 219 / 255))
            Circle()
                .frame(width: 100 ,height: 100)
                .foregroundColor(Color.yellow)
        }
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
