//
//  BusMainView.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/27.
//

import SwiftUI
import Combine

struct BusMainView: View {
    @Environment(\.presentationMode) var mode
    
    @ObservedObject var viewModel: StationInfoApi = StationInfoApi()
    @StateObject var textObserver: TextFieldObserver = TextFieldObserver()
    
    @State var startStationSearchTerm: String = ""
    @State var endStationSearchTerm: String = ""
    
    var body: some View {
        VStack {
            VStack{
                TextField("출발지 입력", text: $textObserver.searchText).padding(.leading)
                    .frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .onReceive(textObserver.$debouncedText) { val in
                        startStationSearchTerm = val
                    }
                    .onChange(of: startStationSearchTerm) { newValue in
                        guard startStationSearchTerm.replacingOccurrences(of: " ", with: "") != "" else { return }
                        viewModel.getBusStation(searchTerm: startStationSearchTerm)
                    }
                
                TextField("도착지 입력", text: $endStationSearchTerm).padding(.leading)
                    .frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
            }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
            .frame(maxWidth: .infinity, maxHeight: 250 )
            .background(.black)
            .ignoresSafeArea()
            
            if viewModel.stationData != nil {
                NavigationView {
                    List {
                        ForEach(viewModel.stationData!, id: \.self) { station in
                            Text(station.stNm)
                        }
                    }
                }
            } else {
                Spacer()
                
                if let headerData = viewModel.headerData {
                    if headerData.headerCD != "0" {
                        Text(headerData.headerMsg)
                    } else if headerData.itemCount == 0 {
                        Text("검색 결과가 없습니다.")
                    }
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "chevron.backward")
            Text("돌아가기")
                .fontWeight(.bold)
                .font(.system(size: 22))
        })
    }
}


struct BusMain_Previews: PreviewProvider {
    static var previews: some View {
        BusMainView()
            .previewDevice("iPhone X")
    }
}
