//
//  ContentView.swift
//  SwiftUIAuthTutorial
//
//  Created by Glenn Ritz on 1/5/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ProfileView()
            } else {
                LoginView()
            }
        }
    }
}

// Test comment

#Preview {
    ContentView()
}
