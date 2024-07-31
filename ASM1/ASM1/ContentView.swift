//
//  ContentView.swift
//  ASM1
//
//  Created by Thinh Nguyen Duong Truong on 31/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct WelcomeView: View {
    @State private var showInfoView = false
    
    var body: some View {
        VStack {
            
            Text("App Name")
                .font(.largeTitle)
                .padding()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("App Slogan")
                .font(.title)
                .padding()
            
            Button(action: {
                // Action to navigate to the navigation list view
            }) {
                Text("Get Started")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                showInfoView.toggle()
            }) {
                Image(systemName: "info.circle")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showInfoView) {
            InfoView()
        }
    }
}

struct InfoView: View {
    var body: some View {
        VStack {
            Text("App Author")
                .font(.title)
            
            Text("Name: Your Name")
                .font(.body)
            
            Text("Student ID: Your Student ID")
                .font(.body)
            
            Text("Program: Your Program")
                .font(.body)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
