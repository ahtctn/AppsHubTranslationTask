//
//  NavHistoryButtonView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct NavHistoryButtonView: View {
    @Binding var isHistorySentecesTapped: Bool
    var body: some View {
        Button {
            print("history Button tapped")
            isHistorySentecesTapped.toggle()
        } label: {
            Image("time")
        }
    }
}

#Preview {
    NavHistoryButtonView(isHistorySentecesTapped: .constant(false))
}
