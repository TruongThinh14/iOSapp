struct InfoView: View {
    var body: some View {
        VStack {
            Text("Author Information")
                .font(.headline)
                .padding()
            
            Text("Name: Your Name")
            Text("Student ID: Your Student ID")
            Text("Program: Your Program")
            
            Button("Close") {
                // Dismiss the sheet
            }
            .padding()
        }
    }
}
