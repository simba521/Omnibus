//
//  SearchEndStation.swift
//  Omnibus
//
//  Created by κΉλν on 2022/10/18.
//

import SwiftUI

struct SearchEndStation: View {
    var bus = ["hansung", "seoul", "hae", "home","ho", "ell", "gam", "dream", "your", "f", "G",]
    @State var searchText: String = ""
    
    var body: some View {

            List {
                TextField("Search", text: $searchText)
                    .padding(7)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
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
                .navigationBarTitle("Bus Station")
        }
    }
}

struct SearchEndStation_Previews: PreviewProvider {
    static var previews: some View {
        SearchEndStation()
    }
    
}
