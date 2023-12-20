//
//  ChangeLanguagesButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct ChangeLanguagesButtonView: View {
    @Binding var isReversed: Bool
    var body: some View {
        Button {
            print("Change languages button Tapped")
            isReversed.toggle()
        } label: {
            Image("convertImage")
        }
    }
}

#Preview {
    ChangeLanguagesButtonView(isReversed: .constant(false))
}
