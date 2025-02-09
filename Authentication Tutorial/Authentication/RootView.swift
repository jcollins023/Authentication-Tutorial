//
//  RootView.swift
//  Authentication Tutorial
//
//  Created by John Collins on 1/17/25.
//

import SwiftUI
import FirebaseAuth

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    @State private var showSignUpView: Bool = false
    
    
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignInView: $showSignInView, showSignUpView: $showSignUpView)
            }
            
        }
        .onAppear() {
            if Auth.auth().currentUser == nil {
                showSignUpView.toggle()
            }
        }
        .fullScreenCover(isPresented: $showSignUpView) {
            NavigationStack {
                AuthenticationView(showSignInView: $showSignInView, showSignUpView: $showSignUpView)
            }
        }
       
        .onAppear {
            if Auth.auth().currentUser == nil {
                showSignInView.toggle()
            }
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                AuthenticationView(showSignInView: $showSignInView, showSignUpView: $showSignUpView)
                }
            }
        }
    }

    
    #Preview {
        RootView()
    }
