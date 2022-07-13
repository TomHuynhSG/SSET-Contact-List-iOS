//
//  ContactCard.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import SwiftUI
import CoreLocation
struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        
        ZStack {
            ColorConstants.rmitBlue.edgesIgnoringSafeArea(.all)
                
            VStack {
                MapView(coordinate: contact.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                CircleImage(image: contact.image)
                    .offset(y: -100)
                    .padding(.bottom, -100)
                Text(contact.name)
                    .font(.system(size: 40))
                    .bold()
                .foregroundColor(.white)
                Image("rmit").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 65)
                    .padding(.bottom, 5)

                InfoView(text: contact.email, imageName: "envelope.fill")
                InfoView(text: contact.phone, imageName: "phone.fill")
                
            }
        }
        
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[0])
    }
}
