//
//  Message.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/25/21.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let user: String
    let messageText: String
    let imageName: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES : [MockMessage] = [
    .init(id: 0, user: "slf188", messageText: "Doge or Bitcoin?",imageName: "elon", isCurrentUser: true),
    .init(id: 1, user: "elonmusk", messageText: "Doge",imageName: "elon", isCurrentUser: false),
    .init(id: 2, user: "slf", messageText: "Why?",imageName: "elon", isCurrentUser: true),
    .init(id: 3, user: "elonmusk", messageText: "Doge is the future",imageName: "elon", isCurrentUser: false),
    .init(id: 4, user: "slf", messageText: "Nice haha",imageName: "elon", isCurrentUser: true)
]
