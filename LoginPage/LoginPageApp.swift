//
//  LoginPageApp.swift
//  LoginPage
//
//  Created by sairaj patil on 2/13/21.
//

import SwiftUI
import Firebase

@main
struct LoginPageApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            TabbarView()
            
        }
    }
}
