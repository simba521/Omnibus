//
//  BusData.swift
//  URLSession
//
//  Created by κΉλν on 2022/10/16.
//

import SwiftUI

struct Comments: Codable, Identifiable {
    let id = UUID()
    let firstStartStation: String
    let lastEndStation: String
    
}
