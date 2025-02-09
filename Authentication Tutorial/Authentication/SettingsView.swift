//
//  Settings View.swift
//  Authentication Tutorial
//
//  Created by John Collins on 1/17/25.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    
    func signOut() throws {
        try AuthenticationManager.shared.signOut()
    }
    
}


struct SettingsView: View {
   
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    @Binding var showSignUpView: Bool
    @State private var showMenu = false
    
    var body: some View {
        List {
            Button("Log Out") {
                Task {
                    do {
                        try viewModel.signOut()
                        showSignInView = true
                        showSignUpView = true
                        
                    } catch {
                        print(error)
                    }
                }
            }
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    showMenu.toggle()
                }, label:{
                    Image(systemName: "line.3.horizontal")
                })
            }
        }
    }
}

#Preview {
    NavigationStack {
        SettingsView(showSignInView: .constant(false), showSignUpView: .constant(false))
    }
}
