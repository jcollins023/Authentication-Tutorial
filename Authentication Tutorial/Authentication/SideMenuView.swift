//
//  SideMenuView.swift
//  Authentication Tutorial
//
//  Created by John Collins on 2/7/25.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
            }
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true))
}
