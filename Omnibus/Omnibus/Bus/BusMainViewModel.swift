//
//  BusViewModel.swift
//  Omnibus
//
//  Created by 김도현 on 2022/11/17.
//

import Foundation
import Alamofire
import SwiftyJSON

class StationInfoApi: ObservableObject {
    
    @Published var stationInfoHeaderData: MsgHeader?
    @Published var stationInfoStationData: [Station]? = []
    
    private let apiKey = "1e8a5Tlb1%2F3x98Yei8NvPYjbjp4iVwu%2FG5IlrpJL6Qa7bz0Var0YwVY%2BL7f5E10tptQDI5n22d2LHlw8kZzIcA%3D%3D"
    
    func getBusStation(searchTerm: String) {
        if let encodedTerm = searchTerm.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            let url = URL(string: "http://ws.bus.go.kr/api/rest/stationinfo/getLowStationByName?serviceKey=\(apiKey)&stSrch=\(encodedTerm)&resultType=json")!
            self.stationInfoStationData = nil
            print("getBusStation() called!!", searchTerm)
            
            AF.request(url, method: .get)
                .responseData() { response in
                    
                    switch response.result {
                    case .success:
                        guard let data = response.data else { return }
                        
                        print(String(data: data, encoding: .utf8) ?? "!!")
                        
                        do {
                            let result = try JSONDecoder().decode(StationResponse.self, from: data)
                            self.stationInfoHeaderData = result.msgHeader
                            self.stationInfoStationData = result.msgBody.itemList
                        } catch {
                            print("parsing error!", error.localizedDescription)
                            return
                        }
                        
                    case .failure(let err):
                        print("network err: \(err)")
                }
            }
        }
    }
}



