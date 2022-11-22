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
                
                TextField("출발지 설정", text: $startPlace).padding(.leading)
                    .frame(maxWidth: 311, maxHeight: 60)
                    .background(Color(uiColor: .secondarySystemBackground))
                
                TextField("도착지 설정", text: $destinationInput).padding(.leading)
                    .frame(maxWidth: 311, maxHeight: 60)
                    .background(Color(uiColor: .secondarySystemBackground))
                        
            }
            

        }
    }

    
    
    struct StartPlace_Previews: PreviewProvider {
        static var previews: some View {
            StartPlace()
                .previewDevice("iPhone X")
        }
    }
