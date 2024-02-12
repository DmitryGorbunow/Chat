//
//  ChatView.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var viewModel: ChatsViewModel
    
    let chat: Chat
    
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { reader in
                ScrollViewReader { scrollReader in
                    ScrollView(showsIndicators: false) {
                        MessagesView(viewWidth: reader.size.width, chat: chat)
                            .onChange(of: chat.messages.count, { oldValue, newValue in
                                withAnimation {
                                    scrollReader.scrollTo("MSG_VIEW", anchor: .bottom)
                                }
                            })
                            .onAppear {
                                scrollReader.scrollTo("MSG_VIEW", anchor: .bottom)
                            }
                    }
                }
                .background(Image(.background).resizable())
                .padding(.top, 1)
            }
            
            Toolbar(chat: chat)
        }
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                ChatViewNavBar(chat: chat)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ChatView(chat: Chat.mockChat[0])
            .environmentObject(ChatsViewModel())
    }
}


