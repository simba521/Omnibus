//
//  jsonParsing.swift
//  Api
//
//  Created by 김도현 on 2022/11/15.
//

import Foundation

struct Connect: Codable {
    var routeID: String
    var routeName: String
    var turn: String
    var node_ID: String
    var arsID: String
    var stationName: String
    var xCoordinate: String
    var yCoordinate: String
}

func saveJsonData(data:Connect) {
    let jsonEndcoder = JSONEncoder()
    
    do {
        let encodedData = try jsonEndcoder.encode(data)
        print(String(data: encodedData, encoding: .utf8)!)
        
        guard let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let fileURL = documentDirectoryUrl.appendingPathComponent("routeStationInfo.json")
        
        do { 
            try encodedData.write(to: fileURL)
        }
        catch let error as NSError {
            print(error)
        }
        
        
    } catch {
        print(error)
    }
}
