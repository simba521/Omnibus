//
//  SearchStartStaion.swift
//  Api
//
//  Created by 김도현 on 2022/10/18.
//

import SwiftUI

struct SearchStation: View {

    var bus = ["hansung", "seoul", "hae", "home","ho", "ell", "gam", "dream", "your", "f", "G",]
    @State var searchText: String = ""
    
    var body: some View {
            VStack{
                TextField("Search", text: $searchText).padding(.leading)
                    .frame(width: 269, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                TextField("Search", text: $searchText).padding(.leading)
                    .frame(width: 269, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
            
            List {
                ForEach(
                    bus.filter {
                        searchText.isEmpty ||
                        $0.localizedStandardContains(searchText)
                    },
                    id: \.self
                ) { eachBus in
                    Text(eachBus)
                }
            }
        }
    }
}

struct SearchStartStation_Previews: PreviewProvider {
    static var previews: some View {
        SearchStation()
            .previewDevice("iPhone X")
    }
}
