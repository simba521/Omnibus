//
//  Landmark.swift
//  Landmark
//
//  Created by κΉλν on 2022/10/04.
//
import Foundation
import SwiftUI
import CoreLocation


struct BusData: Codable  {
    var totalTime: Int
    var firstStartStation: String
    var lastEndStation: String
    var busCount: String
}

//struct Landmark: Hashable, Codable, Identifiable {
//    var id: Int
//    var name: String
//    var park: String
//    var state: String
//    var description: String
//
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
//
//    private var coordinates: Coordinates
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
//
//    struct Coordinates: Hashable, Codable {
//        var latitude: Double
//        var longitude: Double
//    }
//}


