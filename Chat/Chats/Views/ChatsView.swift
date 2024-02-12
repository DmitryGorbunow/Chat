//
//  ChatsView.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import SwiftUI

struct ChatsView: View {
    
    @StateObject var viewModel = ChatsViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button("Broadcast Lists") {}
                Spacer()
                Button("New Group") {}
            }
            .padding(.horizontal)
            
            List {
                ForEach(viewModel.chats) { chat in
                    NavigationLink {
                        ChatView(chat: chat)
                            .environmentObject(viewModel)
                            .toolbarRole(.editor)
                            .toolbar(.hidden, for: .tabBar)
                    } label: {
                        ChatRow(chat: chat)
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button(action: {
                            withAnimation {
                                viewModel.removeChat()
                            }
                        }) {
                            Label("Archive", systemImage: "archivebox.fill")
                        }
                        .tint(.archiveButtonBlue)
                    }
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button(action: {}) {
                            Label("More", systemImage: "ellipsis")
                        }
                    }
                }
            }
            .listStyle(.plain)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Edit") {}
            }
            ToolbarItem(placement: .topBarTrailing) {
                Image(.editIcon)
            }
        }
    }
}

#Preview {
    ChatsView()
}
