//
//  ChatsViewModel.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import Foundation

final class ChatsViewModel: ObservableObject {
    
    @Published var chats = Chat.mockChat
    
    func sendMessage(_ text: String, in chat: Chat) -> Message? {
        if let index = chats.firstIndex(where: { $0.id == chat.id }) {
            let message = Message(text, type: .Sent)
            chats[index].messages.append(message)
            return message
        }
        return nil
    }
    
    func removeChat() {
        chats.removeFirst()
    }
    
    func getSectionMessages(for chat: Chat) -> [[Message]] {
        var res = [[Message]]()
        var tmp = [Message]()
        for message in chat.messages {
            if let firstMessage = tmp.first {
                let daysBetween = firstMessage.date.daysBetween(date: message.date)
                if daysBetween >= 1 {
                    res.append(tmp)
                    tmp.removeAll()
                    tmp.append(message)
                } else {
                    tmp.append (message)
                }
            } else {
                tmp.append (message)
            }
        }
        res.append(tmp)
        return res
    }
}


