//
//  LoginView.swift
//  FirebaseAuthPrac
//
//  Created by Ramachandran Varadaraju on 08/10/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 16){
                    // logo
                    logoView
                    
                    // title
                    titleView
                    
                    Spacer()
                    
                    // textfields
                    InputView(placeholder: "Email or phone number", text: $email)
                    InputView(placeholder: "Password", isSecureField: true, text: $password)
                    
                    // forgot password
                    forgotPasswordView
                    
                    Spacer()
                    
                    // login button
                    loginButtonView
                    
                    Spacer().frame(height: 50)
                    
                    // bottom view
                    bottomView
                    
                }
                .padding()
            }
            .ignoresSafeArea()
        }
    }
    
    private var logoView: some View{
        Image("friends")
            .resizable()
            .scaledToFit()
    }
    
    private var titleView: some View{
        Text("Let's connect with US!")
            .font(.title2)
            .fontWeight(.semibold)
    }
    
    private var forgotPasswordView: some View{
        Button{
            
        }label: {
            Text("Forgot Password?")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    private var loginButtonView: some View{
        Button{
            
        }label: {
            Text("Login")
                
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .teal, textColor: .white))
    }
    
    private var orLineView: some View{
        HStack(spacing: 10){
            VStack{
                Divider().frame(height: 1)
            }
            
            Text("or")
            
            VStack{
                Divider().frame(height: 1)
            }
        }
    }
    
    private var appleLoginButtonView: some View{
        Button{
            
        }label: {
            Label("Sign up with Apple", systemImage: "apple.logo")
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .black, textColor: .white))
    }
    
    private var googleLoginButtonView: some View{
        Button{
            
        }label: {
            HStack{
                Image("google")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Sign up with Google")
            }
        }
        .buttonStyle(CapsuleButtonStyle(bgColor: .clear, textColor: .black, hasBorder: true))
    }
    
    private var signupButtonView: some View{
        NavigationLink {
            SignupView()
        } label: {
            HStack(spacing: 10){
                Text("Didn't have an account?")
                    .foregroundStyle(.black)
                Text("Sign up")
                        .foregroundStyle(.teal)
            }
            .fontWeight(.medium)
        }

    }
    
    private var bottomView: some View{
        VStack(spacing: 16){
            // or line
            orLineView
            
            // apple login button
            appleLoginButtonView
            
            // google login button
            googleLoginButtonView
            
            // signup button
            signupButtonView
        }
    }
    
}

#Preview {
    LoginView()
}
