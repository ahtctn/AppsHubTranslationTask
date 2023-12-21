//
//  RetaButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 21.12.2023.
//

import SwiftUI

struct RateButtonView: View {
    var systemName: String
    var filledSystemName: String
    @Binding var isSelected: Bool
    @Binding var showRateAlert: Bool
    
    var body: some View {
        Button {
            isSelected.toggle()
            if isSelected {
                showRateAlert = true
            }
        } label: {
            Image(systemName: isSelected ? filledSystemName : systemName)
                .foregroundStyle(Color(Constants.Colors.blueColor))
        }
    }
}

#Preview {
    RateButtonView(systemName: "star.fill", filledSystemName: "star", isSelected: .constant(false), showRateAlert: .constant(false))
}
