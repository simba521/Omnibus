//
//  ContentView.swift
//  URLSession
//
//  Created by 김도현 on 2022/10/12.
//

import SwiftUI

struct ContentView: View {
    //1.
    @State var comments = [Comments]()
    
    var body: some View {
        NavigationView {
            //3.
            List(comments) { comment in
                VStack(alignment: .leading) {
                    Text(comment.firstStartStation)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(comment.lastEndStation)
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                
            }
            //2.
            .onAppear() {
                apiCall().getUserComments { (comments) in
                    self.comments = comments
                }
            }.navigationTitle("Comments")
        }
    }
}
