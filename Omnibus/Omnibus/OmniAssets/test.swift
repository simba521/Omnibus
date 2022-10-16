//
//  test.swift
//  Omnibus
//
//  Created by 김도현 on 2022/10/14.
//

import SwiftUI

struct test: View {
    @EnvironmentObject var dattta: Dattta
    
    var body: some View {
        VStack {
            Text("출발정류장: \(dattta.data.lastEndStation)")
                .padding()
            Text("도착정류장: \(dattta.data.firstStartStation)")
        }
        .onAppear {
            dattta.getBus()
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
            .environmentObject(Dattta())
    }
}
