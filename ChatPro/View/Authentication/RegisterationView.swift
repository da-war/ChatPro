//
//  RegisterationView.swift
//  ChatPro
//
//  Created by Rana Dawar Abdullah on 21/09/2024.
//

import SwiftUI

struct RegisterationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""

    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    VStack(alignment: .leading) {
                        HStack { Spacer() }
                        Text("Get Started.")
                            .font(.title)
                            .bold()
                        
                        Text("Create Your Account!")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                    }
                    
                    VStack(spacing: 20) {
                        CustomTextField(placeholderText: "Name", text: $name, isSecuredField: false)
                        CustomTextField(placeholderText: "Email", text: $email, isSecuredField: false)
                        CustomTextField(placeholderText: "Password", text: $password, isSecuredField: true)
                    }
                    .padding(.top, 32)
                    
                    Button(action: {
                        print("Handle Sign In")
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width * 0.8, height: 40)
                            .background(Color.blue)
                            .clipShape(Capsule())
                    })
                    .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                    .padding(.horizontal)
                    .padding(.top, 30)
                    
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Already have an account?").font(.system(size: 14, weight: .semibold))
                        NavigationLink(destination: LoginView(), label: {
                            Text("Sign In!").font(.system(size: 14, weight: .bold))
                        })
                        Spacer()
                    }
                    .padding(.bottom, 16)
                }
                .padding(.horizontal) // Ensure content doesn't touch the edges
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true) // Hide the back button
        }
        .padding(.top, -56)
    }
}

#Preview {
    RegisterationView()
}

