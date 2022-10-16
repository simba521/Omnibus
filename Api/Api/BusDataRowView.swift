//
//  BusDataRowView.swift
//  Api
//
//  Created by 김도현 on 2022/10/05.
//

import Foundation
import SwiftUI

struct BusDataRowView : View {
    
    var busData : Datas

    init(_ busData : Datas) {
        self.busData = busData
    }
    
    var  body: some View {
        HStack {
//            Circle()
            Text("\(busData.info.description)")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(nil)
                .minimumScaleFactor(0.5)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            .padding(.vertical)
            .background(.yellow)
            
    }
}


struct BusDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        BusDataRowView(Datas.getDummy())
    }
}
