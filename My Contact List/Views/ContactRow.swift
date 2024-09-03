//
//  ContactRow.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import SwiftUI

struct ContactRow: View {
    let contact: Contact
    
    var body: some View {
        HStack {
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.name)
        }
    }
}

#Preview {
    Group{
        ContactRow(contact: contacts[0])
        ContactRow(contact: contacts[1])
        ContactRow(contact: contacts[2])
        ContactRow(contact: contacts[3])
    }
}
