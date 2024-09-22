import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack{
                    VStack(alignment: .leading) {
                        HStack{Spacer()}
                        Text("Hello.")
                            .font(.largeTitle)
                            .bold()
                        
                        Text("Welcome Back!")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.blue)
                        
                    }
                        
                        VStack(spacing: 20) {
                            TextField("Email", text: $email)
                                .padding(5)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            SecureField("Password", text: $password)
                                .padding(5)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        .padding(.top, 32)
                        
                        HStack{
                            Spacer()
                            NavigationLink(destination: Text("Reset Password..."),label: {
                                Text("Forgot Password?")
                                    .padding([.vertical,.top],15)
                                    .font(.system(size: 13, weight: .semibold))
                                    
                            })
                        }

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
                        .shadow(color:.gray,radius: 10,x:0.0,y: 0.0)
                        .padding(.horizontal)
                        
                    
                        
                        Spacer()
                        HStack{
                            Spacer()
                            Text("Don't have the account?").font(.system(size: 14,weight: .semibold))
                            NavigationLink(destination: RegisterationView(),label: {
                                Text("Sign Up!").font(.system(size: 14,weight:.bold))
                            })
                            Spacer()
                        }
                        .padding(.bottom,16)
                    
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
    LoginView()
}
