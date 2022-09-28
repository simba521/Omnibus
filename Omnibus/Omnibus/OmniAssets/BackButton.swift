//
//  BackButton.swift
//  Omnibus
//
//  Created by 김도현 on 2022/09/28.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        NavigationView {
            NavigationLink("Press Me", destination: Text("Detail").navigationTitle("Detail View"))
                .navigationBarTitleDisplayMode(.inline)
                // this sets the Back button text when a new screen is pushed
                .navigationTitle("Back to Primary View")
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        // this sets the screen title in the navigation bar, when the screen is visible
                        Text("Primary View")
                    }
                }
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
