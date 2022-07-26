//
//  GreetingView.swift
//  ContactList
//
//  Created by Tom Huynh on 7/26/22.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            ColorConstants.rmitBlue.ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20){
                Spacer()
                VStack(spacing: 0) {
                    Text("Welcome")
                      .font(.system(size: 60))
                      .fontWeight(.heavy)
                      .foregroundColor(.white)
                    Text("""
                    The Contact List is long,
                    The Circle is small!
                    """)
                      .font(.title3)
                      .fontWeight(.light)
                      .foregroundColor(.white)
                      .multilineTextAlignment(.center)
                      .padding(.horizontal, 10)
                    
                    
                }
                Spacer()
                ZStack{
                    CircleLayerView()
                    Image("rmit-logo-white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                }
                
                Spacer()


                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                      .fill(Color.white.opacity(0.2))
                      .padding(8)
                      .frame(height:80)
                      .overlay(Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
                })
            }
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
