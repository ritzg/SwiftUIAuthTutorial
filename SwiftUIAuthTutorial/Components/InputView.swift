//
//  InputView.swift
//  SwiftUIAuthTutorial
//
//  Created by Glenn Ritz on 1/5/24.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
        
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder,
                            text: $text)
                .font(.system(size: 14))
                
            } else {
                TextField(placeholder,
                            text: $text)
                .font(.system(size: 14))
            }
            
            Divider()
        }
    }
}

#Preview {
    InputView(text: .constant(""), title: "EMail Address", placeholder: "name@example.com")
}
