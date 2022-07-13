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
                Image("rmit").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 20.0)
                    .frame(width: 200)
                Image("tom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(.white),lineWidth: 5))
                Text("Tom Huynh")
                    .font(.system(size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("RMIT Lecturer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
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
