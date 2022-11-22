//
//  DismissKeyboradExtention.swift
//  Omnibus
//
//  Created by 김도현 on 2022/11/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
