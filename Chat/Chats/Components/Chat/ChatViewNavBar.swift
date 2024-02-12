//
//  ChatViewNavBar.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct ChatViewNavBar: View {
    
    let chat: Chat
    
    var body: some View {
        HStack(spacing: 20) {
            NavigationLink {
                ContactInfoView(person: chat.person)
                    .toolbarRole(.editor)
                    .navigationTitle("Contact Info")
            } label: {
                HStack {
                    Image(chat.person.imgString)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(chat.person.name).bold()
                            .foregroundStyle(.black)
                        Text("tap here for contact info")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                }
            }
            Button (action: {}) {
                Image(.videoCall)
            }
            Button (action: {}) {
                Image(.call)
            }
        }
    }
}

