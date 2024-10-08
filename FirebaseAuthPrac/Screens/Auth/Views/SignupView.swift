//
//  SignupView.swift
//  FirebaseAuthPrac
//
//  Created by Ramachandran Varadaraju on 08/10/24.
//

import SwiftUI

struct SignupView: View {
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var isPasswordValid: Bool{
        confirmPassword == password
    }
    
    var body: some View {
        VStack(spacing: 16){
            // title
            Text("Please complete all information to create your account")
                .multilineTextAlignment(.center)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.vertical)
            
            // text fields
            InputView(placeholder: "Email or phone number", text: $email)
            InputView(placeholder: "Full Name", text: $fullName)
            InputView(placeholder: "Password", isSecureField: true, text: $password)
            ZStack(alignment: .trailing){
                InputView(placeholder: "Confirm Password", isSecureField: true, text: $confirmPassword)
                Spacer()
                if !password.isEmpty && !confirmPassword.isEmpty {
                    Image(systemName: "\(isPasswordValid ? "checkmark" : "xmark").circle.fill")
                        .foregroundStyle(isPasswordValid ? Color(.systemGreen) : Color(.systemRed))
                }
            }
            
            Spacer()
            
            // signup button
            Button{
                
            }label: {
                Text("Create Account")
            }
            .buttonStyle(CapsuleButtonStyle(bgColor: .teal, textColor: .white))
        }
        .padding()
        .navigationTitle("Set up your account")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarRole(.editor)
    }
}

#Preview {
    NavigationStack {
        SignupView()
    }
}
