//
//  RandomAPISwiftUIApp.swift
//  RandomAPISwiftUI
//
//  Created by Obinna Aguwa on 01/10/2022.
//

import SwiftUI

@main
struct RandomAPISwiftUIApp: App {
    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                ContentView()
                    .environmentObject(authentication)
            } else {
                LoginView()
                    .environmentObject(authentication)
            }
            
        }
    }
}
