//
//  connect.swift
//  testingCodable
//
//  Created by κΉλν on 2022/11/11.
//

import Foundation

struct Connect: Codable {
    var routeID: String
    var routeName: String
    var turn: String
    var node_ID: String
    var arsID: String
    var stationName: String
    var xCoordinate: String?
    var yCoordinate: String?
}
