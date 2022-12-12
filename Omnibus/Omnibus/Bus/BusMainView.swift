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
    
    @ObservedObject var stationViewModel: StationInfoApi = StationInfoApi()
    @StateObject var textObserver: TextFieldObserver = TextFieldObserver()
//    @ObservedObject var findWayViewModel: FindWayApi = FindWayApi()
    
    @State private var startStationSearchTerm: String = ""
    @State private var endStationSearchTerm: String = ""
    
    @State private var startStationIsSelected: Bool = false
    @State private var endStationIsSelected: Bool = false

    @State private var startTextFieldIsEditing: Bool = false
    @State private var endTextFieldIsEditing: Bool = false
    
    @State private var startCoordinates = [String]()
    @State private var endCoordinates = [String]()
    
    var body: some View {
        VStack {
            VStack {
                TextField("출발지 입력", text: $textObserver.startText).padding(.leading)
                    .frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .onReceive(textObserver.$startDebouncedText) { val in
                        startStationSearchTerm = val
                    }
                    .onChange(of: startStationSearchTerm) { newValue in
                        guard !startStationIsSelected else {
                            startStationIsSelected = false
                            return
                        }
                        guard startStationSearchTerm.replacingOccurrences(of: " ", with: "") != "" else { return }
                        stationViewModel.getBusStation(searchTerm: newValue)
//                        findWayViewModel.getStationCoordinates(searchCoordinates: startCoordinates)
                        
                    }
                    .onTapGesture {
                        startTextFieldIsEditing = true
                        endTextFieldIsEditing = false
                        
                    }
               
                
                TextField("도착지 입력", text: $textObserver.endText).padding(.leading)
                    .frame(width: 350, height: 60)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .onReceive(textObserver.$endDebouncedText) { val in
                        endStationSearchTerm = val
                    }
                    .onChange(of: endStationSearchTerm) { newValue in
                        guard !endStationIsSelected else {
                            endStationIsSelected = false
                            return
                        }
                        guard endStationSearchTerm.replacingOccurrences(of: " ", with: "") != "" else { return }
                        stationViewModel.getBusStation(searchTerm: newValue)
//                        findWayViewModel.getStationCoordinates(searchCoordinates: endCoordinates)
                        
                    }
                    .onTapGesture {
                        startTextFieldIsEditing = false
                        endTextFieldIsEditing = true
                    }
            }
            .onTapGesture {
                self.hideKeyboard()
            }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
            .frame(maxWidth: .infinity, maxHeight: 250 )
            .background(.black)
            .ignoresSafeArea()
            
            if stationViewModel.stationInfoStationData != nil {
                NavigationView {
                    List {
                        ForEach(stationViewModel.stationInfoStationData!, id: \.self) { station in
                            Button {
                                if startTextFieldIsEditing {
                                    startStationIsSelected = true
                                    startCoordinates = [station.tmX, station.tmY]
                                    textObserver.startText = station.stNm
                                    print(startCoordinates[0])
                                } else if endTextFieldIsEditing {
                                    endStationIsSelected = true
                                    textObserver.endText = station.stNm
                                    endCoordinates = [station.tmX, station.tmY]
                                }
                            } label: {
                                Text(station.stNm)
                            }
                        }
                    }.listStyle(.inset)
                }
            } else {
                Spacer()
                
                if stationViewModel.stationInfoStationData == nil {
                    ProgressView()
                }
                
                if let headerData = stationViewModel.stationInfoHeaderData {
                    if stationViewModel.stationInfoStationData != nil && headerData.itemCount == 0 {
                        Text("검색 결과가 없습니다.")
                    } else if headerData.headerCD != "0" {
                        Text(headerData.headerMsg)
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


