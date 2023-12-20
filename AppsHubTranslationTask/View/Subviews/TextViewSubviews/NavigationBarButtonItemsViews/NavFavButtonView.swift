//
//  NavFavButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct NavFavButtonView: View {
    @Binding var isFavoriteSentecesTapped: Bool
    var body: some View {
        Button {
            print("favorite senteces tapped")
            isFavoriteSentecesTapped.toggle()
        } label: {
            Image("starTabbar")
        }
    }
}

#Preview {
    NavFavButtonView(isFavoriteSentecesTapped: .constant(true))
}
