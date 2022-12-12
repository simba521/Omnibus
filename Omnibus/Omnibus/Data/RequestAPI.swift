//
//  data.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/16.
//

import Foundation
import Alamofire
import SwiftyJSON

class hello: ObservableObject {
    @Published var data: FindWay?
    
    private let apiKey = "aJ3B2ShSVzvxB2r4WOH2Qw"
    private let urlInfo = "https://api.odsay.com/v1/api/searchPubTransPathT"
    
    func getBus() {
        guard let url = URL(string: "https://api.odsay.com/v1/api/searchPubTransPathT?lang=0&SX=127.0050698&SY=37.5889019&EX=127.0030196&EY=37.5811926&OPT=0&SearchType=0&SearchPathType=2&apiKey=\(apiKey)") else { fatalError("Missing URl")}
        
        
        AF.request(url, method: .get)
            .validate(statusCode: 200..<600)
            .responseData() { response in
                
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    let result = response.response?.statusCode
                    if result == 200 {
                        print("json: \(json)")
                        
                    } else {
                        print("decoding err: \(String(describing: result))")
                    }
                    
                case .failure(let err):
                    print("network err: \(err)")
            }
        }
    }
}

