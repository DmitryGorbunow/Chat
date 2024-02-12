//
//  ContactInfoView.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/10/24.
//

import SwiftUI

struct ContactInfoView: View {
    
    let person: Person
    
    var body: some View {
        List {
            MainContactInfoSection(person: person)
            AttachedAndSavedSection()
        }
        .background(.thinMaterial)
        .listStyle(.plain)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Text(person.name)
                    .foregroundStyle(.blue)
                    .offset(x: -22)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    EditContactView()
                        .navigationBarBackButtonHidden()
                        .navigationTitle("Edit Contact")
                } label: {
                    Text("Edit")
                }
            }
        }
    }
}

#Preview {
    ContactInfoView(person: Person(name: "Dmitry Gorbunow", imgString: "userPhoto"))
}

