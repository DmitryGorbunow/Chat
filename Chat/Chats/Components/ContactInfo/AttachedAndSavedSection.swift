//
//  AttachedAndSavedSection.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct AttachedAndSavedSection: View {
    
    var body: some View {
        Section(header: Text("")) {
            NavigationLink {
                Text("Hello")
            } label: {
                HStack {
                    Image(.userInfoImageIcon)
                    VStack(alignment: .leading) {
                        Text("Media, Links, and Docs")
                            .font(.system(size: 16))
                    }
                    Spacer()
                    Text("12")
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal ,7)
            }
            
            NavigationLink {
                Text("Hello")
            } label: {
                HStack {
                    Image(.userInfoFavoritesIcon)
                    VStack(alignment: .leading) {
                        Text("Starred Messages")
                            .font(.system(size: 16))
                    }
                    Spacer()
                    Text("None")
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal ,7)
            }
            
            NavigationLink {
                Text("Hello")
            } label: {
                HStack {
                    Image(.userInfoSearchIcon)
                    VStack(alignment: .leading) {
                        Text("Chat Search")
                            .font(.system(size: 16))
                    }
                    Spacer()
                }
                .padding(.horizontal ,7)
            }
        }
    }
}

