# TicTacToeiOS
A simple game of TicTacToe for iOS devices.
- Implements the MVC (model-view-controller) design pattern.
- Game board is represented by an array of size 9.
- Uses custom sounds as moves are made.
- Game will check for a winner after each move is made by the user/computer.
- The user will always start the game and will use the 'X' pieces.
- The computer will go after the user's turn and will use the 'O' pieces.

# Setting the Difficulty
You can set the game difficulty by clicking the 'Game Settings' button.

Easy:
The computer only makes random moves.

Medium:
The computer can make a winning move (when 2 of computer's pieces are lined up vertically, horizontally, or diagonally) or a random move.
Computer's priority of moves: Winning, Random.

Expert:
The computer can either make a blocking move (move to block the user from winning), a winning move, or a random move.
Computer's priority of moves: Winning, Blocking, Random.

# New Game
The user can start a new game simply by selecting the 'New Game' button.

# Score Screen Tab
Keeps track of the number of times the computer won, the human won, or ties.
