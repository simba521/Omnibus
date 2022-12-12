//
//  TextFieldObserver.swift
//  Omnibus
//
//  Created by 김도현 on 2022/11/21.
//

import SwiftUI
import Combine

class TextFieldObserver : ObservableObject {
    
    @Published var startText = ""
    @Published var endText = ""
    
    @Published var startDebouncedText = ""
    @Published var endDebouncedText = ""
     
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        $startText
            .debounce(for: .seconds(0.6), scheduler: DispatchQueue.main)
            .sink(receiveValue: { [weak self] t in
                self?.startDebouncedText = t
            } )
            .store(in: &subscriptions)
        
        $endText
            .debounce(for: .seconds(0.6), scheduler: DispatchQueue.main)
            .sink(receiveValue: { [weak self] t in
                self?.endDebouncedText = t
            } )
            .store(in: &subscriptions)
    }
}
