//
//  ThisWeek_PracticeApp.swift
//  ThisWeek_Practice
//
//  Created by Admin on 10/22/26.
//

import SwiftUI

@main
struct ThisWeek_PracticeApp: App {
    @State private var isLoggedIn = false
    @State private var showLogin = true
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                MainView()
                    .tint(.pink)
            } else {
                if showLogin {
                    LoginView(
                        isLoggedIn: $isLoggedIn,
                        showLogin: $showLogin
                    )
                } else {
                    RegisterView(
                        isLoggedIn: $isLoggedIn,
                        showLogin: $showLogin
                    )
                }
            }
        }
    }
}
