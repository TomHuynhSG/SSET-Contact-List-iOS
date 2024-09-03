//
//  ContactCard.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import SwiftUI

struct ContactCard: View {
    let contact: Contact
    
    var body: some View {
        ZStack{
            Color("rmit-blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ScrollView {
                VStack{
                    MapView(myLocation: contact.locationCoordinate)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(height: 250)
                    CircleView(image: contact.image)
                        .offset(y: -90)
                        .padding(.bottom, -90)
                    Text(contact.name)
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                    Image("rmit-logo-white")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 75)
                    Group{
                        InfoView(text: contact.email, imageName:
                        "envelope.fill")
                        InfoView(text: contact.phone, imageName:
                        "phone.fill")
                    }
                    .padding()
                    
                }
            }
        }
        .navigationTitle(contact.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContactCard(contact:contacts[0])
}
