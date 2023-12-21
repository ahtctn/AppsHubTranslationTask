//
//  RateTranslationView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct RateTranslationView: View {
    @Binding var isLiked: Bool
    @Binding var isDisliked: Bool
    @Binding var showRateAlert: Bool
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundStyle(.black)
            
            Text("Rate translation")
                .font(.custom("SFProText", size: 14))
                .fontWeight(.bold)
            Spacer()
            HStack {
                RateButtonView(systemName: "hand.thumbsup", filledSystemName: "hand.thumbsup.fill", isSelected: $isLiked, showRateAlert: $showRateAlert)
                RateButtonView(systemName: "hand.thumbsdown", filledSystemName: "hand.thumbdown.fill", isSelected: $isDisliked, showRateAlert: $showRateAlert)
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
    RateTranslationView(isLiked: .constant(true), isDisliked: .constant(false), showRateAlert: .constant(true))
}
