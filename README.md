# AQA COMP1 2016 - AQA REVERSE
Code for the AQA AS Computing COMP1 2016 unit. Requested.

## The Game
The code for the exam creates a game called AQA Reverse, which is based on the real game called Reversi (or Othello). For full rules view the COMP1-PM-Computing-AS-1Mar16 PDF file. It is essentially a human-vs-computer game where the players take it in turn to place a piece on the board, with the aim of having the most pieces when the board is filled. An opponent's piece can be taken by 'sandwiching' it between two of your pieces - horizontally or vertically - and multiple pieces can be sandwiched at once. Pieces cannot be sandwiched against the edge of the board. The version in the code is played on an 8x8 board which can be changed.

## Understanding The Code
The exam will be much easier if you understand the simple features of your programming language (variables, if-else, loops, case/switch, etc.) but also if you understand the skeleton code before going into the exam. To understand the code you should:
 - Comment the whole code to explain each subroutine and algorithm
 - Make a list of all variables (global and local) and explain their purposes
 - Identify variables and subroutines of different types (explained in COMP1 theory)
Remember that questions may not just involve writing new code but explaining current code or suggesting improvements.

## Code To Implement
Once you understand the code you should try editing the code and implementing features that may possibly be asked in the actual exam. Some code can be found in this repository, but you can attempt:
 - Data validation for each input (partially completed in skeleton code)
 - Pieces being captured with diagonal movement
 - Board can be resized greater than 9x9
 - Changing who has the first turn (human, computer, and random)
 - A more complex AI algorithm (view the random, single line, algorithm currently used and expand on it - unlikely in the real exam)
 - Saving the game board into a file
 - Loading the game board (requires saving and adding a new item to the initial menu)
This list is not a complete list of possible questions, and you should experiment adding anything you think that would improve the game.
