//
//  BusMainView.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/27.
//



import SwiftUI


struct BusMainView: View {
    
    @StateObject private var viewModel = BusMainVM()
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack {
                StartPlace()
                .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                    
            List {
                ForEach(1...10, id: \.self){
                    Text("혜화역 \($0)")
                }
            }
        }.ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
                        self.mode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                            .imageScale(.large)
                            .padding(EdgeInsets(top: 40, leading: 3, bottom: 4, trailing: 0))
                    })
    }
}


struct BusMain_Previews: PreviewProvider {
    static var previews: some View {
        BusMainView()
    }
}
