//
//  ChatModel.swift
//  Chat
//
//  Created by Dmitry Gorbunow on 2/9/24.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imgString: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    let hasFile: Bool
    
    init(_ text: String, type: MessageType, date: Date, hasFile: Bool = false) {
        self.date = date
        self.type = type
        self.text = text
        self.hasFile = hasFile
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
}

extension Chat {
    static let mockChat = [
        Chat(person: Person(name: "Hakim  Parker", imgString: "userPhoto"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help😔", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)), 
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1), hasFile: true),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date(), hasFile: true),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Karen Castillo", imgString: "userPhotoW"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1), hasFile: true),
            Message( "This joke is sooo old haha", type: .Received, date: Date(), hasFile: true),
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Hakim  Parker", imgString: "userPhoto"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Karen Castillo", imgString: "userPhotoW"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Hakim  Parker", imgString: "userPhoto"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Karen Castillo", imgString: "userPhotoW"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Hakim  Parker", imgString: "userPhoto"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Karen Castillo", imgString: "userPhotoW"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: false),
        
        Chat(person: Person(name: "Hakim  Parker", imgString: "userPhoto"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(name: "Karen Castillo", imgString: "userPhotoW"), messages: [
            Message("Hey Hakim", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Please I need your help", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Maybe you send me some \"good\" jokes", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure I can do that. No problem", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OMG so bad", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message( "This joke is sooo old haha", type: .Received, date: Date()),
        ], hasUnreadMessage: false),
    ]
}
