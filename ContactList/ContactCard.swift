//
//  ContactCard.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import SwiftUI

struct ContactCard: View {
    var body: some View {
        
        ZStack {
            ColorConstants.rmitBlue.edgesIgnoringSafeArea(.all)
                
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 250)
                Image("tom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(.white),lineWidth: 5))
                    .offset(y: -110)
                    .padding(.bottom, -110)
                Text("Tom Huynh")
                    .font(.system(size: 40))
                    .bold()
                .foregroundColor(.white)
                Image("rmit").resizable()
                    .aspectRatio(contentMode: .fit)

                Divider()
                InfoView(text: "tom.huynh@rmit.edu.vn", imageName: "envelope.fill")
                InfoView(text: "+84 123 456 789", imageName: "phone.fill")
                
            }
        }
        
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard()
    }
}
