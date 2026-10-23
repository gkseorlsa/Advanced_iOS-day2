//
//  RegisterView.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/23/26.
//

import SwiftUI

struct RegisterView: View {
    @Binding var isLoggedIn: Bool
    @Binding var showLogin: Bool
    
    @State private var nickname = ""
    @State private var password = ""
    @State private var age = 25
    @State private var gender: Gender = .male
    @State private var mbti = ""
    @State private var job = ""
    @State private var hobby = ""
    @State private var showAgePicker = false
    
    var body: some View {
        Image(systemName: "person.crop.circle.badge.plus")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .foregroundColor(.pink)
        
        TextField("닉네임", text: $nickname)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
        
        SecureField("비밀번호", text: $password)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
        
        Button {
            showAgePicker = true
        } label: {
            HStack {
                Text("나이")
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(age)세")
                    .foregroundColor(.primary)
                Image(systemName: "chevron.down")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
            .sheet(isPresented: $showAgePicker) {
                Picker("나이", selection: $age) {
                    ForEach(20...50, id: \.self) { n in
                        Text("\(n)세").tag(n)
                    }
                }
            }
        }
        
        Picker("성별", selection: $gender) {
            ForEach(Gender.allCases, id: \.self) { g in
                Text(g.label).tag(g)
            }
        }
        .pickerStyle(.segmented)
        
        TextField("MBTI", text: $mbti)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
        
        TextField("직업", text: $job)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
        
        TextField("취미", text: $hobby)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.systemGray4), lineWidth: 1)
            )
        
        Button {
            isLoggedIn = true
        } label: {
            Text("회원가입")
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.pink)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        
        Button {
            showLogin = true
        } label: {
            Text("이미 계정이 있으신가요? 로그인")
                .font(.subheadline)
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    RegisterView(isLoggedIn: .constant(false), showLogin: .constant(true))
}
