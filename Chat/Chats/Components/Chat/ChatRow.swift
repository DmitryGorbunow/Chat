//
//  ChatRow.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import SwiftUI

struct ChatRow: View {
    
    let chat: Chat
    
    var body: some View {
        HStack {
            Image(chat.person.imgString)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(chat.person.name)
                        .bold()
                    Spacer()
                    Text(chat.messages.last?.date.formattedDateString() ?? "")
                        .foregroundStyle(.gray)
                }
                Group {
                    if chat.hasUnreadMessage {
                        Text(chat.messages.last?.text ?? "")
                    } else {
                        Text(Image(.checkMark)) +
                        Text(chat.messages.last?.text ?? "")
                    }
                }
                .foregroundStyle(.gray)
                .lineLimit(2)
                .padding(.trailing, 40)
            }
        }
    }
}


