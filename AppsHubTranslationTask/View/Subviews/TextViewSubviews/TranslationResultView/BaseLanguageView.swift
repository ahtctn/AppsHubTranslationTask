//
//  BaseLanguageView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct BaseLanguageView: View {
    var baseLanguage: String
    @Binding var textToTranslate: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(baseLanguage)
                .font(.custom("SFProText", size: 12))
                .foregroundStyle(Color(Constants.Colors.secondaryColor))
                .fontWeight(.bold)
            
            Text(textToTranslate)
                .font(.custom("SFProText", size: 32))
                .foregroundStyle(Color.black)
                .fontWeight(.bold)
            
            Spacer()
            
            HStack {
                Image(systemName: "speaker.wave.2")
                    .foregroundStyle(Color(Constants.Colors.secondaryColor))
                Spacer()
                
                Image(systemName: "square.on.square")
                    .foregroundStyle(Color(Constants.Colors.secondaryColor))
                
            }
        }
        .background(Rectangle()
            .frame(width: 335, height: 180, alignment: .center)
            .cornerRadius(16)
            .foregroundStyle(Color(Constants.Colors.textFieldBackgroundColor))
            )
        .frame(width: 302, height: 148, alignment: .center)
    }
}

#Preview {
    BaseLanguageView(baseLanguage: "English", textToTranslate: .constant("Hello"))
}
