//
//  ContentView.swift
//  Api
//
//  Created by 김도현 on 2022/10/05.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var busDataViewModel = BusDataViewModel()
    
    var body: some View {
        
        List(busDataViewModel.BusDatas){ aBusData in
            BusDataRowView(aBusData)
            
        }

    }
}

