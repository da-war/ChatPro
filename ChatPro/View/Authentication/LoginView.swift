//
//  LoginView.swift
//  ChatPro
//
//  Created by Rana Dawar Abdullah on 21/09/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email=""
    @State private var password=""
    
   
    var body: some View {
        NavigationView {
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Hello.").font(.largeTitle).bold()
                Text("Welcome Back!").font(.largeTitle).bold()
                    .foregroundColor(.blue)
                
                VStack(spacing:20){
                    TextField("Email",text: $email).padding(5)
                    SecureField("Password",text: $password).padding(5)
            
                    Button("title") {
                        print("heeloo")
                    }

                }
                .padding(.vertical,32)
                    Spacer()
            }
            .padding(.leading)
        }
        .padding(.top,-56)
    }
}

#Preview {
    LoginView()
}
 
