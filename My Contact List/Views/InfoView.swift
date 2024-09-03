//
//  InfoView.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(Color("rmit-red"))
                    Text(text)
                        .foregroundColor(.black)
                }
            )
    }
}

#Preview {
    VStack{
        InfoView(text: "tom.huynh@rmit.edu.vn", imageName: "envelope.fill")
        InfoView(text: "123456789", imageName: "phone.fill")
    }
}
