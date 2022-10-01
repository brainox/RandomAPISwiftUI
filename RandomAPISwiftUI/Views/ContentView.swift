//
//  ContentView.swift
//  RandomAPISwiftUI
//
//  Created by Obinna Aguwa on 01/10/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Authorized... You are in..")
                    .font(.largeTitle)
                Image("Inside")
                    .padding()
                    .navigationTitle("My Secure App")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Log out") {
                                authentication.updateValidation(success: false)
                            }
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
