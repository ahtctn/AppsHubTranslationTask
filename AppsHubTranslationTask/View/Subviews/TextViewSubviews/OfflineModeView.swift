//
//  OfflineModeView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct OfflineModeView: View {
    @Binding var isOfflineModeOn: Bool
    var height: Double
    var fontSize: Double
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 335, height: height, alignment: .center)
                .foregroundStyle(Color(Constants.Colors.textFieldBackgroundColor))
                .cornerRadius(16)
            
            HStack {
                Image("airplane")
                    .padding(.leading, 10)
                Spacer()
                Toggle("Offline mode", isOn: $isOfflineModeOn)
                    .padding(.trailing, 10)
                    .font(.custom("SFProText", size: fontSize))
                    .fontWeight(.bold)
                
            }
            .frame(width: 335, height: height, alignment: .center)
        }
    }
}

#Preview {
    OfflineModeView(isOfflineModeOn: .constant(true), height: 60.01, fontSize: 16)
}
