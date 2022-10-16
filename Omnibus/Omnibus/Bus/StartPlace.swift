//
//  StartPlace.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/27.
//

import SwiftUI

struct StartPlace : View {
    
    @State private var startPlace : String = ""
    @State private var destinationInput : String = ""
    
    var body: some View {
            VStack() {
                Rectangle().frame(height: 0)
                
                TextField("출발지 설정", text: $startPlace).padding(.leading)
                    .frame(width: 311, height: 60)
                    .background(Color(uiColor: .secondarySystemBackground))
                
                TextField("도착지 설정", text: $destinationInput).padding(.leading)
                    .frame(width: 311, height: 60)
                    .background(Color(uiColor: .secondarySystemBackground))
                        
            }.padding(EdgeInsets(top: 40, leading: 58, bottom: 18, trailing: 21))
            .frame(width: 390, height: 200)
            .background(Color.black)
        }
    }
    
    
    struct StartPlace_Previews: PreviewProvider {
        static var previews: some View {
            StartPlace()
        }
    }

