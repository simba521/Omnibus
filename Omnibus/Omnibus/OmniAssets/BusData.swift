//
//  BusData.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/16.
//

import Foundation

struct BusData: Codable {
    var totalTime: Int = 0 //총 소요시간
    var firstStartStation: String = "" //출발정류장
    var lastEndStation: String = "" //도착정류장
    var busNum: Int = 0 //버스 번호
}

