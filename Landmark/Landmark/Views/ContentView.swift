//
//  ContentView.swift
//  Landmark
//
//  Created by 김도현 on 2022/10/04.
//

import SwiftUI

struct ContentView: View {
    //1.
    @State var busDatas = [BusData]()
    var body: some View {
        NavigationView {
            //3.
            List(busDatas) { busData in
                VStack(alignment: .leading) {
                    Text(busData.totalTime)
                    Text(busData.firstStartStation)
                    Text(busData.lastEndStation)
                    Text(busData.busCount)
                }
            }
            .onAppear() {
                apiCall().getBusData { (busDatas) in
                    self.busDatas = busDatas
                }
            } .navigationTitle("BUSDATA")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
