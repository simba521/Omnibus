//
//  BusData.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/16.
//

import Foundation

//MARK: - 길찾기
struct FindWay: Codable {
    let result: Result
}

struct Result: Codable {
    let path: [Path]?
}

struct Path: Codable {
    let subPath: [SubPath]?
}

struct SubPath: Codable {
    let trafficType, stationCount: Int
    let lane: [Lane]?
}

struct Lane: Codable {
    let busNo: String
    let busLocalBlID: String
}

//MARK: - 버스정류소 정보

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
