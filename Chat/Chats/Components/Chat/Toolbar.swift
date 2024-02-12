//
//  Toolbar.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct Toolbar: View {
    
    @EnvironmentObject var viewModel: ChatsViewModel
    @State private var text = ""
    
    let chat: Chat
    
    var body: some View {
        HStack(spacing: 16) {
            Button(action: {}) {
                Image(.plus)
            }
            
            VStack {
                ZStack() {
                    TextField("", text: $text, axis: .vertical)
                        .padding(.leading, 10)
                        .padding(.trailing, 25)
                        .padding(.vertical, 5)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 0.5)
                                .foregroundStyle(.gray)
                                .background(Color.white
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                )
                        )
                    HStack(alignment: .bottom) {
                        Spacer()
                        Button(action: {}) {
                            Image(.addFiles)
                        }
                        .padding(.trailing, 8)
                        
                    }
                }
            }
            
            Group {
                if text.isEmpty {
                    Button(action: {}) {
                        Image(.camera)
                    }
                    Button(action: {}) {
                        Image(.audio)
                    }
                } else {
                    Button(action: sendMessage) {
                        Image (systemName: "paperplane.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            }
            .foregroundStyle(.blue)
        }
        .padding(.horizontal)
        .padding(.vertical, 7)
        .background(.thinMaterial)
    }
    
    func sendMessage() {
        if viewModel.sendMessage(text, in: chat) != nil {
            text = ""
        }
    }
}

