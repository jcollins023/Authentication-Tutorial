//
//  AuthenticationView.swift
//  Authentication Tutorial
//
//  Created by John Collins on 1/17/25.
//

import SwiftUI

struct AuthenticationView: View {
    
    @Binding var showSignInView: Bool
    @Binding var showSignUpView: Bool

    var body: some View {
        VStack {
            NavigationLink {
                SignInEmailView(showSignInView: $showSignInView)
            } label: {
                Text ("Sign In With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            NavigationLink {
                SignUpEmailView(showSignUpView: $showSignUpView)
            } label: {
                Text ("Sign Up With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Welcome")
    }
}

#Preview {
    NavigationStack {
        AuthenticationView(showSignInView: .constant(false), showSignUpView: .constant(false))
    }
}




