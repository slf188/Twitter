//
//  MainTabView.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/24/21.
//

import SwiftUI

struct MainTabView: View {
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "house")
                    }.tag(0)
                
                SearchView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }.tag(1)
                
                ConversationsView()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "envelope")
                    }.tag(2)
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: logOutButton)
        }
    }
    
    var logOutButton: some View {
        Button(action: {
            AuthViewModel.shared.signout()
        }, label: {
            Text("Logout")
                .foregroundColor(.black)
        })
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0:
            return "Feed"
        case 1:
            return "Explore"
        case 2:
            return "Messages"
        default:
            return ""
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(selectedIndex: .constant(0))
    }
}
