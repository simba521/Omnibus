//
//  test.swift
//  URLSession
//
//  Created by 김도현 on 2022/10/16.
//

//
//  data.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/16.
//

import Foundation

class apiCall {
    func getUserComments(completion:@escaping ([Comments]) -> ()) {
        guard let url = URL(string: "https://api.odsay.com/v1/api/searchPubTransPathT?lang=0&SX=127.0050698&SY=37.5889019&EX=127.0030196&EY=37.5811926&OPT=0&SearchType=0&SearchPathType=2&apiKey=aJ3B2ShSVzvxB2r4WOH2Qw") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let comments = try! JSONDecoder().decode([Comments].self, from: data!)
            print(comments)
            
            DispatchQueue.main.async {
                completion(comments)
            }
        }
        .resume()
    }
}



