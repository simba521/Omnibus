//
//  BusData.swift
//  URLSession
//
//  Created by 김도현 on 2022/10/16.
//

import SwiftUI

struct Comments: Codable, Identifiable {
    let id = UUID()
    let firstStartStation: String
    let lastEndStation: String
    
}
