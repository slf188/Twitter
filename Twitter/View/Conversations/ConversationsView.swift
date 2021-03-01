//
//  ConversationsView.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/25/21.
//

import SwiftUI

struct ConversationsView: View {
    
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {
                })
            
            ScrollView {
                ForEach(0 ..< 10) { _ in
                    NavigationLink(
                        destination:
                            ChatView(),
                        label: {
                            ConversationCell()
                        })
                }
            }
            
            Button(action: { self.isShowingNewMessageView.toggle() }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView) {
                NewMessageView(startChat: $isShowingNewMessageView, show: $showChat)
            }
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
