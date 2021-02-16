//
//  AuthView.swift
//  LoginPage
//
//  Created by sairaj patil on 2/14/21.
//

import SwiftUI
import Firebase

struct signinView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("Logged in")
            }
        }
    }
    
    var body: some View {
        VStack {
            VStack {
                appTitle()
                appImage()
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .disableAutocorrection(true)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {login()}, label: {
                    loginButtonContent()
                })
                
                Spacer()
                
                NavigationLink(
                    destination: signupView()) {
                    HStack {
                        //signupButtonContent()
                        Text("I'm a new user")
                            .font(.system(size: 14, weight:.light))
                            .foregroundColor(.primary)
                        
                        Text("Create an account")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.blue)
                        
                    }
                }

                
                
            }.padding()
            
        }

        
    }
}

struct AuthView: View {
    var body: some View {
        NavigationView {
            signinView()
        }
        
    }
}



struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
            .previewDevice("iPhone 11")
    }
}

struct appTitle: View {
    var body: some View {
        Text("AMICA")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            .padding(.bottom, 20)
    }
}

struct appImage: View {
    var body: some View {
        Image("travel1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 60)
            
    }
}

struct loginButtonContent: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.blue)
            .cornerRadius(40.0)
    }
}

struct signupButtonContent: View {
    var body: some View {
        Text("Sign Up")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(40.0)
    }
}
////SignupView new view

struct signupView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var error: String = ""
    
    
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    
    var body: some View {
        
        VStack {
            Text("Create Account")
                .font(.system(size: 32, weight: .heavy))
            
            Text("Sign up to get started")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.gray)
            
            VStack(spacing: 18 ) {
                TextField("First Name", text: $firstname)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    //.padding(12)
                    .disableAutocorrection(true)
                
                TextField("Last Name", text: $lastname)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    //.padding(12)
                    .disableAutocorrection(true)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    //.padding(12)
                    .disableAutocorrection(true)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    //.padding(12)
            }.padding()
            .padding(.vertical, 30)
            
            Button(action: {signUp()}, label: {
                signupButtonContent()
            })
            
        }
        
        Spacer()
        
    }
}
