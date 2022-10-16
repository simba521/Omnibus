//
//  text.swift
//  URLSession
//
//  Created by 김도현 on 2022/10/12.
//

import UIKit


class api: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    // ODsay Api Key 정보
    let apiKey = "aJ3B2ShSVzvxB2r4WOH2Qw"
    // 호출 URL 정보
    let urlInfo = "https://api.odsay.com/v1/api/searchPubTransPathT"
    //API 호출 (GET)
    odsayAPI(apiKey: apiKey, urlString: urlInfo, params: [
      "SX" : 127.0050698,
      "SY" : 37.5889019,
      "EX" : 127.0030196,
      "EY" : 37.5811926
    ]) { (ret, retData) in
      //응답 성공
      if ret {
        if let convertedJsonString = String(data: retData as! Data, encoding: .utf8) {
          print(convertedJsonString)
        }
      }
    }
  }
  func odsayAPI(apiKey: String, urlString: String, params: [String: Any], completion: @escaping (Bool, Any) -> Void) {
    let encodedApiKey = apiKey.addingPercentEncoding(withAllowedCharacters: .controlCharacters)!
    var queryParams = "apiKey=\(encodedApiKey)"
    for key in params.keys {
      if queryParams.isEmpty {
        queryParams = "\(key)=\(params[key]!)"
      } else {
        queryParams += "&\(key)=\(params[key]!)"
      }
    }
    let urlStr = "\(urlString)?\(queryParams)"
    var request = URLRequest(url: URL(string: urlStr)!)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "GET"
    URLSession.shared.dataTask(with: request) { data, response, error in
      guard error == nil else {
        print("Error: error calling GET")
        print(error!)
        completion(false, error!)
        return
      }
      guard let data = data else {
        print("Error: Did not receive data")
        return
      }
      guard let response = response as? HTTPURLResponse, (200 ..< 300) ~= response.statusCode else {
        print("Error: HTTP request failed")
        completion(false, data)
        return
      }
      completion(true, data)
    }.resume()
  }
}
