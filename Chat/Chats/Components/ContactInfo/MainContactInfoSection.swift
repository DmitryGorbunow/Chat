//
//  MainUserInfoSection.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct MainContactInfoSection: View {
    
    let person: Person
    
    var body: some View {
        Image(person.imgString)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: UIScreen.main.bounds.width)
            .clipped()
            .listRowInsets(EdgeInsets())
        
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 10) {
                Text(person.name)
                    .font(.system(size: 18))
                    .bold()
                Text("+7 996 595 6623")
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
            Spacer()
            Image(.userInfoChat)
            Image(.userInfoVideoCall)
            Image(.userInfoCall)
        }
        
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Design adds value faster, than it adds cost")
                    .font(.system(size: 14))
                Text("Dec 18, 2018")
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
        }
    }
}

