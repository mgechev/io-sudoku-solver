#Io sudoku solver

This repository contains a sudoku solver using the brute force, backtracking, algorithm implemented in the Io programming language.

The puzzles can be passed as parameters in two ways - as nested lists (matrix) or as file.

Here is an example of loading a sudoku from file and solving it:

    Importer addSearchPath("lib")

    board := Board clone init
    board readFromFile("sudoku.txt")
    sudoku := Sudoku clone init(board)

    "Sudoki puzzle to be solved:" println
    sudoku show 

    "Solving..." println
    sudoku solve

    "The solved sudoku is:" println
    sudoku show
