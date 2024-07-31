//
//  ListView.swift
//  ASM1
//
//  Created by Thinh Nguyen Duong Truong on 31/7/24.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let shortDescription: String
}


let sampleItems = [
    Item(name: "Item 1", imageName: "item1", shortDescription: "Description of Item 1"),
    Item(name: "Item 2", imageName: "item2", shortDescription: "Description of Item 2"),
    Item(name: "Item 3", imageName: "item3", shortDescription: "Description of Item 3")
]


import SwiftUI

struct ListView: View {
    @State private var searchText = ""
    @State private var isDarkMode = false
    
    // Filtered items based on the search text
    var filteredItems: [Item] {
        sampleItems.filter { item in
            searchText.isEmpty || item.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // Search bar
                TextField("Search...", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                // Dark/Light mode toggle
                Toggle(isOn: $isDarkMode) {
                    Text("Dark Mode")
                }
                .padding()
                
                // List of items
                List(filteredItems) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                            Text(item.shortDescription)
                                .font(.subheadline)
                                .lineLimit(2)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Items")
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
