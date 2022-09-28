//
//  BusMain.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/27.
//



import SwiftUI


struct BusMain: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        VStack {
            
            StartPlace()
            List {
                ForEach(1...10, id: \.self){
                    Text("혜화역 \($0)")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
                        self.mode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "chevron.backward")
                    })
    }
}


struct BusMain_Previews: PreviewProvider {
    static var previews: some View {
        BusMain()
    }
}
