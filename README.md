func endGame() {
    // Show an alert or a message
    let alert = UIAlertController(title: "Congratulations!", message: "You've reached 10 points and won the game!", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
        // Handle what happens after the game ends, e.g., restart the game or exit
        self.resetGame()
    }))
    // Assuming you're in a UIViewController
    self.present(alert, animated: true, completion: nil)
}

func resetGame() {
    // Reset the game state
    playerScore = 0
    // Additional reset logic
}
