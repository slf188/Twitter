//
//  ResetPasswordView.swift
//  Twitter
//
//  Created by Felipe Vallejo on 2/26/21.
//

import SwiftUI

struct ResetPasswordView: View {
    
    @Binding private var email: String
    @EnvironmentObject var viewModel: AuthViewModel
    @Environment(\.presentationMode) var mode
    
    init(email: Binding<String>) {
        self._email = email
    }
    
    var body: some View {
        ZStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                    .padding(.bottom, 52)
                
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                }
                
                Button(action: {
                    viewModel.resetPassword(withEmail: email)
                }, label: {
                    Text("Send Reset Password Link")
                        .font(.headline)
                        .frame(width: 360, height: 50)
                        .foregroundColor(.blue)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .padding(.top)
                })
                
                Spacer()
                
                Button(action: { mode.wrappedValue.dismiss() }, label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                })
            }
            .background(Color(#colorLiteral(red: 0.2017256916, green: 0.6336666346, blue: 0.9543420672, alpha: 1)))
            .ignoresSafeArea()
        }
    }
}
