//
//  ContentView.swift
//  Api
//
//  Created by 김도현 on 2022/10/05.
//

import SwiftUI

struct ContentView: View {
    @State var searchingFor = ""
    var busData = ["혜화역.마로니에공원", "혜화역.서울대병원입구", "혜화역1번출구", "방송통신대앞","성대입구", "명륜동2가.성균관대입구", "성균관대학교앞", "혜화역.동성중고(장면총리가옥)", "명륜3가.성대입구", "방송통신대.이화장", "서울대병원장례식장", "서울대어린이병원응급실.갑상선센터", "서울대학교병원현관.암병원현관", "혜화동로터리", "혜화우체국"]
    
    var body: some View {
        NavigationView{
            List {
                Text("test")
            }
        }
    }
    var result: [String] {
        if searchingFor.isEmpty {
            return busData
        } else {
            return busData.filter { $0.contains(searchingFor)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone X")
    }
}
