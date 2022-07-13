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
            ColorConstants.rmitBlue.edgesIgnoringSafeArea(.all)
                
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                CircleImage(image: contacts[0].image)
                    .offset(y: -100)
                    .padding(.bottom, -100)
                Text("Tom Huynh")
                    .font(.system(size: 40))
                    .bold()
                .foregroundColor(.white)
                Image("rmit").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 65)
                    .padding(.bottom, 5)

                InfoView(text: "tom.huynh@rmit.edu.vn", imageName: "envelope.fill")
                InfoView(text: "+84 123 456 789", imageName: "phone.fill")
                
            }
        }
        
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[0])
    }
}
