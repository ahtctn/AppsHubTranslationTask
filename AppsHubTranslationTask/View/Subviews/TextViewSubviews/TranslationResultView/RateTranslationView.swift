//
//  RateTranslationView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct RateTranslationView: View {
    @Binding var isLiked: Bool
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundStyle(.black)
            
            Text("Rate translation")
                .font(.custom("SFProText", size: 14))
                .fontWeight(.bold)
            Spacer()
            HStack {
                Button { 
                    isLiked = true
                } label: {
                    //MARK: THUMBSUP THUMBSDOWN KISMINDAN DEVAM EDİLECEK.
                    Image(systemName: isLiked ? "hand.thumbsup.fill" : "hands.thumbsup")
                        .foregroundStyle(Color(Constants.Colors.blueColor))
                }
                
                Button { 
                    isLiked = false
                } label: {
                    Image(systemName: isLiked ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                        .foregroundStyle(Color(Constants.Colors.blueColor))
                }
                
                
            }
            
        }
        .background(
            Rectangle()
                .frame(width: 335, height: 48, alignment: .center)
                .cornerRadius(16)
                .foregroundStyle(Color(Constants.Colors.textFieldBackgroundColor))
        )
        .frame(width: 315, height: 48, alignment: .center)
        
    }
}

#Preview {
    RateTranslationView(isLiked: .constant(true))
}
