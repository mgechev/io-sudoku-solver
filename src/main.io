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
