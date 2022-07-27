//
//  InfoView.swift
//  ContactList
//
//  Created by Tom Huynh on 7/13/22.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let url: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(ColorConstants.rmitRed)
                Link(destination: URL(string: url)!) {
                    Text(text)
                        .foregroundColor(.black)
                }
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ColorConstants.rmitBlue
                .edgesIgnoringSafeArea(.all)
            VStack{
                InfoView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
                InfoView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            }
        }
        InfoView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        InfoView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
