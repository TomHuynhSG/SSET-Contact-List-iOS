//
//  CircleView.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import SwiftUI

struct CircleView: View {
    let image: Image
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
                Circle()
                    .stroke(Color("rmit-red"), lineWidth: 1)
            )
            .shadow(color: .white, radius: 7)
    }
}

#Preview {
    CircleView(image: contacts[0].image)
}
