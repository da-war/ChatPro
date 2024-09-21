//
//  LoginView.swift
//  ChatPro
//
//  Created by Rana Dawar Abdullah on 21/09/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Hello.").font(.largeTitle).bold()
                Text("Welcome Back!").font(.largeTitle).bold()
                    .foregroundColor(.blue)
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
 
