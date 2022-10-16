//
//  BusData.swift
//  Api
//
//  Created by 김도현 on 2022/10/05.
//

import Foundation


struct BusData: Codable, CustomStringConvertible {
    var result: [Datas]
    var description: String {
        return "return: \(result)"
    }
}

struct Datas: Codable, Identifiable {
    var id = UUID()
    var busCount: Int
    var info: Info
    var subPath: SubPath
    static func getDummy() -> Self {
        print(#fileID, #function, #line, "")
        return Datas(busCount: 3, info: Info.getDummy(), subPath: SubPath.getDummy())
    }
    
    var description: String {
        return info.description
    }
}

struct Info: Codable, CustomStringConvertible {
    
    
    var totalTime: Int //총 소요시간
    var firstStartStation: String //출발 정류장
    var lastEndStation: String //도착 정류장
    var busStationCount: Int //몇 정거장 남았는지
    
    var description: String {
        return"[\(totalTime)]\(firstStartStation)\(lastEndStation)\(busStationCount)"
    }
    static func getDummy() -> Self {
        print(#fileID, #function, #line, "")
        return Info(totalTime: 10, firstStartStation: "혜화.마로니에공원역", lastEndStation: "한성대입구역", busStationCount: 2)
    }
}

struct SubPath: Codable{
    var stationCount: Int //이동하여 정차하는 정거장 수
    var busNo: String
    var StationName: String //거쳐가는 정류장 이름
    
    static func getDummy() -> Self {
        print(#fileID, #function, #line, "")
        return SubPath(stationCount: 3, busNo: "1227", StationName: "qwer")
    }
}

//struct BusData: Codable, Identifiable {
//    var id = UUID()
//    var totalTime: Int //총 소요시간
//    var startStation: String //출발정류장
//    var endStation: String //도착정류장
//    var busNum: Int //버스 번호
//    var busCount: String //버스 개수
//    var stationName: String //거쳐가는 정류장 이름
//
//}


