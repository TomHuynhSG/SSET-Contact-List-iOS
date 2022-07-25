//
//  ContactCard.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import SwiftUI
struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        ZStack {
        ColorConstants.rmitBlue
            .edgesIgnoringSafeArea(.all)
  
                VStack {
                    CircleImage(image: contact.image)
                    Text(contact.name)
                        .font(.system(size: 40))
                        .bold()
                    .foregroundColor(.white)
                    Image("rmit-logo-white").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 65)
                        .padding(.bottom, 5)

                    InfoView(text: contact.email, imageName: "envelope.fill")
                    InfoView(text: contact.phone, imageName: "phone.fill")
                    
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[0])
    }
}
