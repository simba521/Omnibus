//
//  StartPlace.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/27.
//

import SwiftUI

struct StartPlace : View {
    
    @State var startPlace : String = ""
    @State var destinationInput : String = ""
    
    var body: some View {
        VStack (alignment: .leading) {
            Rectangle().frame(height: 0)
            
            TextField("출발지 설정", text: $startPlace)
                    .frame(width: 311, height: 60)
                    .background(Color.white)
                    .cornerRadius(5)
                TextField("도착지 설정", text: $destinationInput)
                    .frame(width: 311, height: 60)
                    .background(Color.white)
                    .cornerRadius(5)
        }
        .padding(EdgeInsets(top: 59, leading: 58, bottom: 18, trailing: 21))
        .frame(width: 390, height: 200)
        .background(Color.yellow)
        .ignoresSafeArea()

        }
    }
    
    
    struct StartPlace_Previews: PreviewProvider {
        static var previews: some View {
            StartPlace()
        }
    }

