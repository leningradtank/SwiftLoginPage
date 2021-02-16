//
//  ProfileView.swift
//  LoginPage
//
//  Created by sairaj patil on 2/15/21.
//

import SwiftUI

struct ProfileView: View {
    
    @State var firstname: String = "Mikhaila"
    
    var body: some View {
        NavigationView{
            VStack {
            VStack {
                HStack(spacing: 25) {
                    Image("mikhaila")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipShape(Circle())
                    
                    VStack {
                        Text(firstname)
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Verified")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                }
                
                VStack(spacing: 16) {
                    NavigationLink(
                        destination: MyProfile(),
                        label: {
                            MenuRow(title: "My Profile", icon: "person.fill")
                        }).foregroundColor(.black)
                    
                    NavigationLink(
                        destination: MyProfile(),
                        label: {
                            MenuRow(title: "Payments", icon: "creditcard.fill")
                        }).foregroundColor(.black)
                    
                    NavigationLink(
                        destination: MyProfile(),
                        label: {
                            MenuRow(title: "Sign Out", icon: "gear")
                        }).foregroundColor(.black)
                    
                    
                }.padding(.top, 40)
                
                Spacer()
            }
                
                
                
            
            
        }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct MenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        
           HStack(spacing: 15) {
             
                    Image(systemName: icon)
                        .frame(width: 32, height: 32)
                    Text(title)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .frame(width: 120, alignment: .leading)
          }
    }
}
