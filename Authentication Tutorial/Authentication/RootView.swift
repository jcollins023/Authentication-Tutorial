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
                SettingsView(showSignInView: $showSignInView)
            }
        }
            .onAppear {
                if Auth.auth().currentUser?.uid != nil {
                    //user is logged in

                    }else {
                         //user is not logged in
                        }
                //let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
                //self.showSignInView = authUser == nil
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
