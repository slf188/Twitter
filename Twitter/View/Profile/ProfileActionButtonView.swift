//
//  ProfileActionButtonView.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/25/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Edit Profile")
                .frame(width: 360, height: 40)
                .background(Color.blue)
                .foregroundColor(.white)
        })
        .clipShape(Capsule())
        .shadow(radius: 4)
        } else {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Following")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .clipShape(Capsule())
                .shadow(radius: 4)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                })
                .clipShape(Capsule())
                .shadow(radius: 4)
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
