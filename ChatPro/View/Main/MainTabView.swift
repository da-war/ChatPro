//
//  MainTabView.swift
//  ChatPro
//
//  Created by Rana Dawar Abdullah on 23/09/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                // Home (ChatView)
                ChatView()
                    .tabItem {
                        Image(systemName: "message.fill")
                        Text("Home")
                    }
                
                // Settings (GroupChatView)
                GroupChatView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                
                // Profile (SettingView)
                SettingView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
            }
        }
    }
}

#Preview {
    MainTabView()
}
