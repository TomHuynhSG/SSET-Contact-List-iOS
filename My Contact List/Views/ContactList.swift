//
//  ContactList.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        
        NavigationView {
            List (contacts){ contact in
                NavigationLink {
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(contact: contact)
                }
                .navigationTitle("SSET Contact 📒")
            }
        }
    }
}

#Preview {
    ContactList()
}
