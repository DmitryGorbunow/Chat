//
//  MessagesView.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct MessagesView: View {
    
    @EnvironmentObject var viewModel: ChatsViewModel
    
    let viewWidth: CGFloat
    let chat: Chat
    let columns = [GridItem(.flexible(minimum: 10))]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0, pinnedViews: [.sectionHeaders]) {
            let sectionMessages = viewModel.getSectionMessages (for: chat)
            ForEach(sectionMessages.indices, id: \.self) { sectionIndex in
                let messages = sectionMessages[sectionIndex]
                Section(header: SectionHeader(message: messages.first ?? Message("", type: .Received))) {
                    ForEach(messages) { message in
                        let isReceived = message.type == .Received
                        let hasFile = message.hasFile
                        HStack {
                            if !isReceived {
                                Spacer()
                            }
                            
                            VStack(alignment: isReceived ? .leading : .trailing, spacing: 6) {
                                
                                if !hasFile {
                                    Text(message.text)
                                    HStack(spacing: 2) {
                                        Text(message.date.getTime())
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 11))
                                        
                                        if !isReceived {
                                            Image(.checkMark)
                                        }
                                    }
                                } else {
                                    HStack {
                                        Image(.fileIcon)
                                        Text("IMG_0475")
                                            .font(.system(size: 16))
                                    }
                                    .padding(.vertical)
                                    .padding(.horizontal, 16)

                                    .background(Color.fileBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    HStack(spacing: 5) {
                                        Group {
                                            Text("2.8 MB • png")
                                            Text(message.date.getTime())
                                        }
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 11))
                                        
                                        if !isReceived {
                                            Image(.checkMark)
                                        }
                                    }
                                }
                            }
                            .padding(12)
                            .background(isReceived ? Color.white : .greenMessages)
                            .clipShape(ChatBubbleShape(direction: isReceived ? .left : .right))
                            
                            if isReceived {
                                Spacer()
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 4)
                    }
                }
            }
        }
        .id("MSG_VIEW")
    }
}

