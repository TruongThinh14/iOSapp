//
//  ContentView.swift
//  ASM1
//
//  Created by Thinh Nguyen Duong Truong on 31/7/24.
//


import SwiftUI

struct ContentView: View {
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
            
            Text("Name: Thinh Nguyen")
                .font(.body)
            
            Text("Student ID: 3914412")
                .font(.body)
            
            Text("Program: iOS Development")
                .font(.body)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

