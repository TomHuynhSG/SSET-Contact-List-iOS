//
//  Contact.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Contact: Identifiable{
    var id: Int {
        Int(phone)!
    }
    var name: String
    var email: String
    var phone: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D
}
