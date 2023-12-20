//
//  OfflineModeView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct OfflineModeView: View {
    @Binding var isOfflineModeOn: Bool
    @ObservedObject var keyboardObserver = KeyboardObserver()
    var body: some View {
        if !keyboardObserver.isKeyboardVisible {
            ZStack {
                Rectangle()
                    .frame(width: 335, height: 60.01, alignment: .center)
                    .foregroundStyle(Color(Constants.Colors.textFieldBackgroundColor))
                    .cornerRadius(16)
                
                HStack {
                    Image("airplane")
                        .padding(.leading, 10)
                    Spacer()
                    Toggle("Offline mode", isOn: $isOfflineModeOn)
                        .padding(.trailing, 10)
                    
                }
                .frame(width: 335, height: 60.01, alignment: .center)
            }            
        }
    }
}

#Preview {
    OfflineModeView(isOfflineModeOn: .constant(true))
}
