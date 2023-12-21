//
//  TargetLanguageView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct TargetLanguageView: View {
    var targetLanguage: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(targetLanguage)
                .font(.custom("SFProText", size: 12))
                .foregroundStyle(Color(Constants.Colors.blueColor))
                .fontWeight(.bold)
            
            
            Text("Hola")
                .font(.custom("SFProText", size: 32))
                .foregroundStyle(Color(Constants.Colors.blueColor))
                .fontWeight(.bold)
            
            Spacer()
            
            HStack {
                Image(systemName: "speaker.wave.2")
                    .foregroundStyle(Color(Constants.Colors.blueColor))
                Spacer()
                
                HStack {
                    Image(systemName: "arrow.down.left.and.arrow.up.right")
                        .foregroundStyle(Color(Constants.Colors.blueColor))
                    
                    Image(systemName: "square.on.square")
                        .foregroundStyle(Color(Constants.Colors.blueColor))
                }
                
                
                
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
    TargetLanguageView(targetLanguage: "Spanish")
}
