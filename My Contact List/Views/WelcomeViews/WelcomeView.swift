//
//  WelcomeView.swift
//  My Contact List
//
//  Created by Tom Huynh on 29/7/24.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive {
                // Display welcome screen
                
                GreetingView(active: $isWelcomeActive)
                
            } else {
                // Display Contact list screen
                ContactList()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
