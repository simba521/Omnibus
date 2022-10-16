//
//  data.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/16.
//

import Foundation
import SwiftUI

class Dattta: ObservableObject {
    @Published var data: BusData = BusData()
    
    var apiKey = "aJ3B2ShSVzvxB2r4WOH2Qw"
    
    func getBus() {
        guard let url = URL(string: "https://api.odsay.com/v1/api/searchPubTransPathT?lang=0&SX=127.0050698&SY=37.5889019&EX=127.0030196&EY=37.5811926&OPT=0&SearchType=0&SearchPathType=2&apiKey=\(apiKey)") else { fatalError("Missing URl")}
        
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                guard let data = data else { return }
//                DispatchQueue.main.async {
                    do {
                        let decodedBus = try JSONDecoder().decode(BusData.self, from: data)
                        self.data = decodedBus
                    } catch let error {
                        print("Error decoding: ", error)
                    }
//                }
            }
        }
        dataTask.resume()
    }
}
