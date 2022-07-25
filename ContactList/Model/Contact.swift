//
//  Contact.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import Foundation
import SwiftUI

struct Contact: Identifiable, Codable {
    var id = UUID()
    var name: String
    var email: String
    var phone: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
