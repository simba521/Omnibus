//
//  EndStationList.swift
//  Api
//
//  Created by κΉλν on 2022/10/18.
//

import Foundation

var endData = ["a", "b", "c", "d","ho", "ell", "gam", "dream", "your", "f", "G",]

List {
    ForEach(
        endData.filter {
            searchEndStation.isEmpty ||
            $0.localizedStandardContains(searchEndStation)
        },
        id: \.self
    ) { eachBus in
        Text(eachBus)
    }
}
