//
//  main.swift
//  beakjoonSwiftAlgorithm
//
//  Created by 김도현 on 2022/10/17.
//

import Foundation

struct Connect: Codable {
    var routeID: String?
    var routeName: String?
    var turn: String?
    var node_ID: String?
    var arsID: String?
    var stationName: String?
    var xCoordinate: String?
    var yCoordinate: String?
}

let encoder  = JSONEncoder()
let FullPath = "/Users/macbook/Downloads/routeStationInfo"
let sampleConnect = Connect()
if let data = try String(contentsOfFile: FullPath).data(using: .utf8){
    
}
