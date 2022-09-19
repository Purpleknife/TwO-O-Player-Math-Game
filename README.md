## TwO-O-Player Math Game
A math game built with Ruby.


### Description
TwO-O-Player Math Game is a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life. Both players have a maximun of 3 lives.


### Details
- ``Player`` class: To keep track of the Player's name, id, lives and initiates the current_player method.
- ``Question`` class: To keep track of the randoms numbers used in the questions.
- ``Game`` class: Where the game loop is played.