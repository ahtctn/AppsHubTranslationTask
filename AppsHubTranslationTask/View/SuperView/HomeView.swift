//
//  HomeView.swift
//  AppsHubTranslationTask
//
//  Created by Ahmet Ali ÇETİN on 20.12.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                TabView(selection: $selectedTab) {
                    TextView()
                        .tabItem {
                            VStack {
                                Image(systemName: "text.alignleft")
                                Text("Text")
                            }
                        }
                        .tag(0)
                    CameraView()
                        .tag(1)
                        .tabItem {
                            VStack {
                                Image(systemName: "camera")
                                Text("Camera")
                            }
                        }
                    VoiceView()
                        .tag(2)
                        .tabItem {
                            VStack {
                                Image(systemName: "mic")
                                Text("Voice")
                            }
                        }
                    SettingsView()
                        .tabItem {
                            VStack {
                                Image(systemName: "gear")
                                Text("Settings")
                            }
                        }
                        .tag(3)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
