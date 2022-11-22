//
//  StartStationList.swift
//  Api
//
//  Created by 김도현 on 2022/10/18.
//

import SwiftUI


var startData = ["hansung", "seoul", "hae", "home","ho", "ell", "gam", "dream", "your", "f", "G",]

class StartStationList: ObservableObject {
    List {
        ForEach(
            startData.filter {
                searchStartStation.isEmpty ||
                $0.localizedStandardContains(searchStartStation)
            },
            id: \.self
        ) { eachBus in
            Text(eachBus)
        }
    }
}
