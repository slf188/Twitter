//
//  User.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/28/21.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let email: String
    let fullname: String
    let profileImageUrl: String
    
    var isCurrentUser: Bool { return AuthViewModel.shared.userSession?.uid == id }
}
