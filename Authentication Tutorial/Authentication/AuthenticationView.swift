//
//  AuthenticationView.swift
//  Authentication Tutorial
//
//  Created by John Collins on 1/17/25.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        
        VStack {
            NavigationLink {
                Text("Hello")
            } label: {
                Text ("Sign In With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle("Sign In")
    }
}

#Preview {
    AuthenticationView()
}
