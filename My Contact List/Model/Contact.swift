//
//  Contact.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import Foundation
import SwiftUI
import MapKit


struct Contact : Identifiable, Codable{
    var id: Int
    var name: String
    var email: String
    var phone: String
    
    var imageName: String
    
    
    var coordinates: Coordinates
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let latitude, longitude: Double
}
