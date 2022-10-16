//
//  SwiftUIView.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/14.
//

import Foundation
import SwiftUI


        let apiKey = "aJ3B2ShSVzvxB2r4WOH2Qw"
        let urlInfo = "https://api.odsay.com/v1/api/searchPubTransPathT"


        
        odsayAPI(apiKey: apiKey, urlString: urlInfo, params: [
          "SX" : 126.9027279,
          "SY" : 37.5349277,
          "EX" : 126.9145430,
          "EY" : 37.5499421
        ]) { (ret, retData) in
            //응답 성공
            if ret {
              if let convertedJsonString = String(data: retData as! Data, encoding: .utf8) {
                print(convertedJsonString)
              }
            }
          }
