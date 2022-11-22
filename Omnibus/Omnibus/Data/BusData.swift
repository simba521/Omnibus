//
//  BusData.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/16.
//

import Foundation

struct FindWay: Codable {
    var totalTime: Int //총 소요시간
    var firstStartStation: String //출발정류장
    var lastEndStation: String //도착정류장
    var busNum: Int //버스 번호
}

struct StationResponse: Codable {
    let msgHeader: MsgHeader
    let msgBody: MsgBody
}

struct MsgHeader: Codable {
    let headerMsg, headerCD: String
    let itemCount: Int

    enum CodingKeys: String, CodingKey {
        case headerMsg
        case headerCD = "headerCd"
        case itemCount
    }
}

struct MsgBody: Codable {
    let itemList: [Station]?
}

struct Station: Codable, Hashable {
    let stID: String
    let stNm: String
    let tmX: String
    let tmY: String
    let arsID: String

    enum CodingKeys: String, CodingKey {
        case stID = "stId"
        case stNm, tmX, tmY
        case arsID = "arsId"
    }
}
