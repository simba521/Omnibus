//
//  BusDataViewModel.swift
//  Api
//
//  Created by 김도현 on 2022/10/05.
//

//class apiCall {
//    func getBusData(completion:@escaping ([BusData]) -> ()) {
//        guard let url = URL(string: "https://api.odsay.com/v1/api/searchPubTransPathT?lang=0&SX=127.0050698&SY=37.5889019&EX=127.0030196&EY=37.5811926&OPT=0&SearchType=0&SearchPathType=2&apiKey=aJ3B2ShSVzvxB2r4WOH2Qw") else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let Datas = try! Json.decode(BusData.self , from: data!)
//            print(Datas)
//
//            DispatchQueue.main.async {
//                completion(Datas)
//            }
//        }
//        .resume()
//    }
//}
import Foundation
import Combine
import Alamofire

class BusDataViewModel: ObservableObject {

    var subscription = Set<AnyCancellable>()

    @Published var BusDatas = [Datas]()

    var baseUrl = "https://api.odsay.com/v1/api/searchPubTransPathT?lang=0&SX=127.0050698&SY=37.5889019&EX=127.0030196&EY=37.5811926&OPT=0&SearchType=0&SearchPathType=2&apiKey=aJ3B2ShSVzvxB2r4WOH2Qw"

    init() {
        print(#fileID, #function, #line, "")
        fetchBusData()
    }

    func fetchBusData(){
        print(#fileID, #function, #line, "")
        AF.request(baseUrl)
            .publishDecodable(type: BusData.self)
            .compactMap{ $0.value }
            .map{ $0.result }
            .sink(receiveCompletion: { completion in
                print("데이터스트림 완료")
            }, receiveValue: { receivedValue in
                print("받은 값 : \(receivedValue.count)")
                self.BusDatas = receivedValue
            }).store(in: &subscription)
    }
}
