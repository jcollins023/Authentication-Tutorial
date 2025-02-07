//
//  SignUpEmailView.swift
//  Authentication Tutorial
//
//  Created by John Collins on 2/7/25.
//

import SwiftUI

@MainActor
final class SignUpEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var firstName = ""
    @Published var lastName = ""
    
    func signUp() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        
        try await AuthenticationManager.shared.createUser(email: email, password: password)
    }
}
        
struct SignUpEmailView: View {
    
    
    @StateObject private var viewModel = SignUpEmailViewModel()
    @Binding var showSignUpView: Bool
    
    var body: some View{
        VStack {
            TextField("Email...", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            SecureField("Password...", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            TextField("First Name...", text: $viewModel.firstName)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            TextField("Last Name...", text: $viewModel.lastName)
                .padding()
                .background(Color.gray.opacity(0.4))
                .cornerRadius(10)
            
            Button {
                Task {
                    do {
                        try await viewModel.signUp()
                        showSignUpView = false
                        return
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
        }
            .padding()
            
        }
        .navigationTitle("Sign Up With Email")
    }
}
    
    #Preview {
        NavigationStack {
            SignUpEmailView(showSignUpView: .constant(false))
        }
    }
