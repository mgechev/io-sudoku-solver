Sudoku := Object clone
 
Sudoku board ::= nil
 
Sudoku init := method(inputBoard,
    setBoard(inputBoard)
    return(self)
)
 
Sudoku validRowValue := method(rowNum, value,
    for (i, 0, board size - 1,
        if (board get(rowNum, i) == value, return(false))
    )
    return(true)
)
 
Sudoku validColumnValue := method(colNum, value,
    for (i, 0, board size - 1,
        if (board get(i, colNum) == value, return(false))
    )
    return(true)
)
 
Sudoku validRegionValue := method(row, col, value,
    rowEnd := (row / 3) floor * 3 + 2 #because the loop is to rowEnd, not rowEnd - 1
    colEnd := (col / 3) floor * 3 + 2
    for (i, rowEnd - 2, rowEnd,
        for (j, colEnd - 2, colEnd,
            if (board get(i, j) == value, return(false))
        )
    )
    return true
)
 
Sudoku _solve := method(row, col,
 
    if (row >= board size,
        solved = true
        return
    )
 
    if (board get(row, col) != 0,
        _next(row, col),
 
        for (i, 1, 9,
            if (validRowValue(row, i) and
                validColumnValue(col, i) and
                validRegionValue(row, col, i),
 
                board set(row, col, i)
                _next(row, col)
            )
        )
        (solved) ifFalse (board set(row, col, 0))
    )
)
 
Sudoku _next := method(row, col,
    if (col < board size - 1,
        _solve(row, col + 1),
        _solve(row + 1, 0)
    )
)
 
Sudoku solve := method(
    self solved := false
    _solve(0,0)
)
 
Sudoku show := method(
    board show
)
 
