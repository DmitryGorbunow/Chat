//
//  SectionHeader.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct SectionHeader: View {
    
    let message: Message
    
    var body: some View {
        ZStack {
            Text(message.date.formattedDateString(forHeader: true))
                .font(.system(size: 12))
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .background(Capsule().foregroundStyle(.headerGray))
        }
        .padding()
    }
}

