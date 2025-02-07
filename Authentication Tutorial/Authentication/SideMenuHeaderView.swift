//
//  SideMenuHeaderView.swift
//  Authentication Tutorial
//
//  Created by John Collins on 2/7/25.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding( .vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Email")
                    
            }
        }
    }
}

#Preview {
    SideMenuHeaderView()
}
