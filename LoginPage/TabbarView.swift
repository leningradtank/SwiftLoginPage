//
//  TabbarView.swift
//  LoginPage
//
//  Created by sairaj patil on 2/15/21.
//

import SwiftUI

struct TabbarView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    var body: some View {
        TabView(){
            
            ExploreView().tabItem {
                Image(systemName: "mappin.circle.fill")
                Text("Explore")
                }
            
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
                }
            
            InboxView().tabItem {
                Image(systemName: "bubble.right.fill")
                Text("Inbox")
                }
            
            ProfileView().tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
                }

        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}

