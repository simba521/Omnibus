//
//  hi.swift
//  Api
//
//  Created by 김도현 on 2022/10/19.
//

import SwiftUI

struct hi : View {
    var body: some View {
        NavigationView{
            Text("설정")
                
        }
    }
}

struct hi_Previews: PreviewProvider {
    static var previews: some View {
        hi()
            .previewDevice("iPhone X")
    }
}
