//
//  BusDataViewModel.swift
//  Landmark
//
//  Created by 김도현 on 2022/10/05.
//

import Foundation

class apiCall {
    func getBusData(completion:@escaping ([BusData]) -> ()) {
        guard let url = URL(string: "https://api.odsay.com/v1/api/searchPubTransPathR") else
        { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let busDatas = try! JSONDecoder().decode([BusData].self, from: data!)
            print(busDatas)
            
            DispatchQueue.main.async {
                completion(busDatas)
            }
        }
        .resume()
    }
}
