//
//  GreetingView.swift
//  My Contact List
//
//  Created by Tom Huynh on 29/7/24.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack {
            Color("rmit-blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                Spacer()
                Text("Welcome")
                    .font(.system(size: 60, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                Text("""
                    The Contact List is long
                    The Circle is small!
                    """)
                .font(.title3)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
                Spacer()
                
                CircleRMITView()
                
                Spacer()
                
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                        .fill(.white.opacity(0.4))
                        .padding(8)
                        .frame(height: 80)
                        .overlay(
                            Text("Get Started")
                                .font(.title2)
                                .foregroundColor(.white)
                        )
                })
                
            }
            
        }
    }
}

#Preview {
    GreetingView(active: Binding.constant(true))
}
