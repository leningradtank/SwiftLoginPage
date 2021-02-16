//
//  InterestView.swift
//  LoginPage
//
//  Created by sairaj patil on 2/15/21.
//

import SwiftUI

struct InterestView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    
    let tabBarImagesNames = ["person", "gear", "house.fill", "pencil", "lasso"]
    
    var body: some View {
        
//        TabView() {
//            HomeView().tabItem {
//                Image(systemName: "house.fill")
//                Text("Home")
//            }
//
//            InterestView().tabItem {
//                Image(systemName: "person.crop.circle")
//                Text("Account")
//            }
//        }
        
        VStack {
            
            ZStack {
                
                switch selectedIndex {
                case 0:
                    NavigationView {
                        Text("First")
                            .navigationTitle("First Tab")
                    }
                default:
                    Text("Remaining Tabs")
                
                }
                
                Spacer()
                
                HStack {
                    ForEach(0..<5) { num in
                        Button(action: {selectedIndex = num}, label: {
                            Spacer()
                        
                        
                        Image(systemName: tabBarImagesNames[num])
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                            
                        Spacer()
                            
                        })
                    }
                }
                
            }
        }
        
    }
}



struct InterestView_Previews: PreviewProvider {
    static var previews: some View {
        InterestView()
    }
}
