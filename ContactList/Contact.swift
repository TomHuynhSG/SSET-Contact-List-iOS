//
//  Contact.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import Foundation
import SwiftUI

struct Contact: Identifiable{
    var id: Int {
        Int(phone)!
    }
    var name: String
    var phone: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
