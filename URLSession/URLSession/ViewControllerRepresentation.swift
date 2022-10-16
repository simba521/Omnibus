//
//  ViewControllerRepresentation.swift
//  URLSession
//
//  Created by 김도현 on 2022/10/13.
//

import SwiftUI



struct ViewControllerRepresentation: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = MyViewController
    
    func makeUIViewController(context: Context) -> MyViewController {
        // Return MyViewController instance
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }
}
