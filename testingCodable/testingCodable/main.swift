//
//  main.swift
//  testingCodable
//
//  Created by 김도현 on 2022/11/11.
//

import Foundation


let file = "/Users/macbook/Downloads/routeStationInfo.json"
let encoder = JSONEncoder()

if let data = try String(contentsOfFile: file).data(using: .utf8) {
    let jsonData = try? encoder.encode(data)
    if let jsonData = jsonData, let jsonString = String(data: jsonData, encoding: .utf8){

        print(jsonString)
 
    }
}
