//
//  DismissKeyboradExtention.swift
//  Omnibus
//
//  Created by κΉλν on 2022/11/22.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

