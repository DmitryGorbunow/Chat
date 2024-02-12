//
//  EditContactView.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/11/24.
//

import SwiftUI

struct EditContactView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var phoneNumber = ""

    var body: some View {
        List {
            HStack(alignment: .top) {
                Text("Name")
                    .bold()
                
                Spacer(minLength: 40)
                
                VStack {
                    TextField("Enter first name", text: $firstName)
                    
                    Divider()
                }
            }
            .listRowSeparator(.hidden)
            
            HStack(alignment: .top) {
                Text("Name")
                    .foregroundStyle(.clear)
                    .bold()
                
                Spacer(minLength: 40)
                
                VStack {
                    TextField("Enter last name", text: $lastName)
                    
                    Divider()
                }
            }
            .listRowSeparator(.hidden)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Phone")
                    .bold()
                
                Spacer(minLength: 40)
                
                VStack(alignment: .leading) {
                    Text("New Zealand")
                    
                    Spacer()

                    Divider()
                }
                
                Image(systemName: "chevron.right")
                    .imageScale(.small)
                    .foregroundStyle(.gray)
            }
            .listRowSeparator(.hidden)
            
            HStack(alignment: .top) {
                Button(action: {}) {
                    
                    HStack {
                        Text("mobile")
                            .foregroundStyle(.blue)
                        
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .foregroundStyle(.gray)
                    }
                }
                
                Spacer(minLength: 10)
                
                TextField("", text: $phoneNumber, prompt: Text("+7 996 595 6623").foregroundColor(.black))
            }
            
            Button(action: {}) {
                Text("more fields")
                    .foregroundStyle(.blue)
            }
            
            Button(action: {}) {
                Text("Delete Contact")
                    .foregroundStyle(.red)
            }
            .listRowSeparator(.hidden)

        }
        .padding(.top, 40)
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save") {
                    
                }
            }
        }
    }
}

#Preview {
    EditContactView()
}
