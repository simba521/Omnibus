//
//  test.swift
//  Omnibus
//
//  Created by κΉλν on 2022/10/14.
//

import SwiftUI

struct test: View {
    @EnvironmentObject var requestApi: RequestAPI

    
    var body: some View {
            Text("hello")
        .onAppear {
            print(requestApi.getBus())
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
            .environmentObject(RequestAPI())
    }
}
