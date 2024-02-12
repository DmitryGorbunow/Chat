//
//  BottomBar.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        TabView {
            StatusView()
                .tabItem {
                    Text("Status")
                    Image(systemName: "circle.dashed.inset.filled")
                }
            
            CallsView()
                .tabItem {
                    Text("Calls")
                    Image(systemName: "phone")
                }
            
            CameraView()
                .tabItem {
                    Text("Camera")
                    Image(systemName: "camera")
                }
            
            NavigationStack {
                ChatsView()
                    .navigationTitle("Chats")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Text("Chats")
                Image(systemName: "message")
            }
            
            SettingsView()
                .tabItem {
                    Text("Settings")
                    Image(systemName: "gear")
                }
        }
    }
}

#Preview {
    BottomBar()
}
