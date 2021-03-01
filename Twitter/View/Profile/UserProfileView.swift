//
//  UserProfileView.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/25/21.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilters: TweetFilterOptions = .tweets
    let user: User
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(user: user)
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilters)
                    .padding()
                
                ForEach(0 ..< 10) { tweet in
                    FeedCell()
                        .padding()
                }
            }
            .navigationTitle("elonmusk")
        }
    }
}
