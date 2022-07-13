//
//  ContactList.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        List {
            ContactRow(contact: contacts[0])
            ContactRow(contact: contacts[1])
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
