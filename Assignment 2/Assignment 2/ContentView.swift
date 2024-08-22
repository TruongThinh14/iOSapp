//
//  ContentView.swift
//  Assignment 2
//
//  Created by Thinh Nguyen Duong Truong on 22/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 0
    @State private var randNum2 = 0
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Spacer()
                        
                Image("logo")
                        
                Spacer()
                        
                
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2))
                
                
                Spacer()
                Button(action: {
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2 = Int.random(in: 2...14)
                    
                    if self.randNum1 > self.randNum2 {
                        self.score1 += 1
                    }
                    else if self.randNum2 > self.randNum1 {
                        self.score2 += 1
                    }
                }) {
                    
                    
                    Image("dealbutton")
                    
                }
                    
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("CPU")
                        Text(String(self.score1))
                    }
                    .padding(.leading, 30)
                    .foregroundColor(.orange)
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                        Text(String(self.score2))
                    }
                    .padding(.trailing, 30)
                    .foregroundColor(.orange)
                    
                }
                Spacer()
            }
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
